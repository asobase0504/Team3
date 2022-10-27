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
#include "camera.h"
#include "input.h"
#include "main.h"
#include "objectX.h"
#include "gimmick.h"
#include "shadow.h"
#include "renderer.h"
#include "meshfield.h"

//=============================================================================
// 静的メンバ変数宣言
//=============================================================================
bool CGimmick::m_Completion = false;

//=============================================================================
// コンストラクタ
//=============================================================================
CGimmick::CGimmick(int nPriority) 
{
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