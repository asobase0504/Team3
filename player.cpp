//=============================================================================
//
// プレイヤー処理 [player.cpp]
// Author : KADO TAKUMA
//
//=============================================================================

//=============================================================================
// インクルードファイル
//=============================================================================
#include <assert.h>
#include "application.h"
#include "camera.h"
#include "input.h"
#include "main.h"
#include "objectX.h"
#include "player.h"
#include "shadow.h"
#include "renderer.h"
#include "meshfield.h"

//=============================================================================
// コンストラクタ
//=============================================================================
CPlayer::CPlayer(int nPriority) : 
	m_nSpeed(5.0f)
{
}

//=============================================================================
// デストラクタ
//=============================================================================
CPlayer::~CPlayer()
{
}

//=============================================================================
// 初期化処理
//=============================================================================
HRESULT CPlayer::Init()
{
	//objectxのposとrot
	D3DXVECTOR3 pos = CObjectX::GetPos();
	D3DXVECTOR3 size = CObjectX::GetSize();
	D3DXVECTOR3 rot = CObjectX::GetRot();

	//オブジェクトの初期化
	CObjectX::Init();

	//モデルのロード
	LoadModel("Data\\MODEL\\AstroBot.x");

	//目的の角度の初期化
	m_rotDest = D3DXVECTOR3(0.0f, 0.0f, 0.0f);		

	//影の生成
	CShadow::Create(pos, size, CObject::PRIORITY_LEVEL3);

	return S_OK;
}

//=============================================================================
// 更新処理
//=============================================================================
void CPlayer::Update()
{
	//キーボードの情報取得
	CInput *pInputKeyboard = CApplication::GetInputKeyboard();

	//カメラの情報取得
	D3DXVECTOR3 pCameraRot = CCamera::GetRot();

	//objectxのposとrot
	D3DXVECTOR3 pos = CObjectX::GetPos();
	D3DXVECTOR3 rot = CObjectX::GetRot();

	//影のpos
	D3DXVECTOR3 ShadowPos = m_shadow->GetPos();

	if (pInputKeyboard->Press(DIK_W))
	{//上に移動
		if (pInputKeyboard->Press(DIK_A))
		{
			pos.x += sinf(D3DX_PI * -0.25f + pCameraRot.y) * m_nSpeed;
			pos.z += cosf(D3DX_PI * -0.25f + pCameraRot.y) * m_nSpeed;
			m_rotDest.y = pCameraRot.y + D3DX_PI * 0.75f;
		}
		else if (pInputKeyboard->Press(DIK_D))
		{
			pos.x += sinf(D3DX_PI * 0.25f + pCameraRot.y) * m_nSpeed;
			pos.z += cosf(D3DX_PI * 0.25f + pCameraRot.y) * m_nSpeed;
			m_rotDest.y = pCameraRot.y + -D3DX_PI * 0.75f;
		}
		else
		{
			pos.x += sinf(pCameraRot.y) * m_nSpeed;
			pos.z += cosf(pCameraRot.y) * m_nSpeed;
			m_rotDest.y = pCameraRot.y + D3DX_PI;
		}
	}

	else if (pInputKeyboard->Press(DIK_S))
	{//下に移動
		if (pInputKeyboard->Press(DIK_A))
		{
			pos.x += sinf(D3DX_PI * -0.75f + pCameraRot.y) * m_nSpeed;
			pos.z += cosf(D3DX_PI * -0.75f + pCameraRot.y) * m_nSpeed;
			m_rotDest.y = pCameraRot.y + D3DX_PI * 0.25f;
		}
		else if (pInputKeyboard->Press(DIK_D))
		{
			pos.x += sinf(D3DX_PI * 0.75f + pCameraRot.y) * m_nSpeed;
			pos.z += cosf(D3DX_PI * 0.75f + pCameraRot.y) * m_nSpeed;
			m_rotDest.y = pCameraRot.y + -D3DX_PI * 0.25f;
		}
		else
		{
			pos.x -= sinf(pCameraRot.y) * m_nSpeed;
			pos.z -= cosf(pCameraRot.y) * m_nSpeed;
			m_rotDest.y = pCameraRot.y + 0.0f;
		}

	}
	else if (pInputKeyboard->Press(DIK_A))
	{//左に移動
		pos.x -= sinf(D3DX_PI * 0.5f + pCameraRot.y) * m_nSpeed;
		pos.z -= cosf(D3DX_PI * 0.5f + pCameraRot.y) * m_nSpeed;
		m_rotDest.y = pCameraRot.y + D3DX_PI * 0.5f;
	}
	else if (pInputKeyboard->Press(DIK_D))
	{//右に移動
		pos.x += sinf(D3DX_PI * 0.5f + pCameraRot.y) * m_nSpeed;
		pos.z += cosf(D3DX_PI * 0.5f + pCameraRot.y) * m_nSpeed;
		m_rotDest.y = pCameraRot.y + -D3DX_PI * 0.5f;
	}

	//角度の正規化(目的の角度)
	if (m_rotDest.y - rot.y > D3DX_PI)
	{
		m_rotDest.y = m_rotDest.y - D3DX_PI * 2;
	}
	else if (m_rotDest.y - rot.y < -D3DX_PI)
	{
		m_rotDest.y = m_rotDest.y + D3DX_PI * 2;
	}

	//少しずつ向く
	rot.y += (m_rotDest.y - rot.y) * 0.08f;

	//角度の正規化(現在の角度)
	if (rot.y > D3DX_PI)
	{
		rot.y = rot.y - D3DX_PI * 2;
	}
	else if (rot.y < -D3DX_PI)
	{
		rot.y = rot.y + D3DX_PI * 2;
	}

	//メッシュフィールドのポインタを取得
	CMeshfield *pMeshField = CApplication::GetMeshfield();
	pMeshField->Collision(&pos);

	//プレイヤーのposとrotの設定
	CObjectX::SetPos(pos);
	CObjectX::SetRot(rot);

	//影のposの設定
	m_shadow->SetPos(D3DXVECTOR3(pos.x, pos.y + 2.0f, pos.z));

	//CObjectXの更新処理
	CObjectX::Update();

	//CDebugProc::Print("モデルの現在の角度:%f\nモデルの目的の角度:%f", rot.y, m_rotDest.y);
}

//=============================================================================
// 生成処理
//=============================================================================
CPlayer * CPlayer::Create(const D3DXVECTOR3 pos, int nPriority)
{
	CPlayer *pPlayer = new CPlayer(nPriority);

	if (pPlayer != nullptr)
	{
		pPlayer->Init();
		pPlayer->SetPos(pos);

		pPlayer->m_shadow = CShadow::Create(D3DXVECTOR3(pos.x, 0.5f, pos.z), D3DXVECTOR3(10.0f, 0.0f, 10.0f), CObject::PRIORITY_LEVEL3);
	}
	else
	{
		assert(false);
	}

	return pPlayer;
}