//=============================================================================
//
// ギミック処理 [gimmick.cpp]
// Author : saito shian
//
//=============================================================================

//=============================================================================
// インクルードファイル
//=============================================================================
#include <assert.h>
#include "application.h"
#include "main.h"
#include "objectX.h"
#include "gimmick.h"
#include "player.h"

//応急処置
bool CGimmick::m_bWallClear = false;

//=============================================================================
// コンストラクタ
//=============================================================================
CGimmick::CGimmick(int nPriority) 
{
	m_bWallClear = false;
	m_pHitPlayer = nullptr;
}

//=============================================================================
// デストラクタ
//=============================================================================
CGimmick::~CGimmick()
{
}

//=============================================================================
// 初期化処理
//=============================================================================
HRESULT CGimmick::Init()
{
	CObjectX::Init();

	SetType(OBJTYPE_GIMMICK);

	//モデルのロード
	LoadModel("TRIANGLE");

	return S_OK;
}

//=============================================================================
// 終了処理
//=============================================================================
void CGimmick::Uninit()
{
	CObjectX::Uninit();
}

//=============================================================================
// 更新処理
//=============================================================================
void CGimmick::Update()
{
	CObjectX::Update();
}

//=============================================================================
// 描画処理
//=============================================================================
void CGimmick::Draw()
{
	CObjectX::Draw();
}

//=============================================================================
// ギミックの種類の設定処理
//=============================================================================
void CGimmick::SetGimmickType(GIMMICKTYPE type)
{
	m_GimmickType = type;
}

//=============================================================================
// 当たったかどうかの判定
//=============================================================================
bool CGimmick::Collision(CPlayer* inPlayer)
{
	if (inPlayer == nullptr)
	{
		return false;
	}

	D3DXVECTOR3 playerPos = inPlayer->GetPos();
	D3DXVECTOR3 thisPos = GetPos();

	if (((thisPos.x + 150.0f) >= playerPos.x) && ((thisPos.z + 150.0f) >= playerPos.z)
		&& ((thisPos.x - 150.0f) <= playerPos.x) && ((thisPos.z - 150.0f) <= playerPos.z))
	{// プレイヤーを動かさないようにするフラグを有効にする
		m_pHitPlayer = inPlayer;
		return true;
	}

	return false;
}

//=============================================================================
// ギミックに当たったかどうかの判定
//=============================================================================
bool CGimmick::CollisionGimmick(CPlayer* Player)
{
	if (Player == nullptr)
	{
		return false;
	}

	D3DXVECTOR3 PlayerPos = Player->GetPos();
	D3DXVECTOR3 thisPos = GetPos();
	D3DXVECTOR3 thisSize = GetSize();

	if (((thisPos.x + thisSize.x - 10.0f) >= PlayerPos.x) && ((thisPos.z + thisSize.z - 10.0f) >= PlayerPos.z)
		&& ((thisPos.x - thisSize.x + 10.0f) <= PlayerPos.x) && ((thisPos.z - thisSize.z + 10.0f) <= PlayerPos.z))
	{// プレイヤーを動かさないようにするフラグを有効にする
		m_pHitPlayer = Player;
		return true;
	}

	return false;
}
