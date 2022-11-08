//=============================================================================
//
// ポーズ処理 [ pause.h ]
// Author : Yuda Kaito
//
//=============================================================================
#ifndef _PAUSE_QUIT_H_
#define _PAUSE_QUIT_H_

//=============================================================================
// インクルードファイル
//=============================================================================
#include "main.h"
#include "object.h"

//=============================================================================
// 前方宣言
//=============================================================================
class CObject2D;

//=============================================================================
// クラスの定義
//=============================================================================
class CPauseQuit : public CObject
{
public:
	//-------------------------------------------------------------------------
	// コンストラクタとデストラクタ
	//-------------------------------------------------------------------------
	CPauseQuit();
	~CPauseQuit() override;

	// 生成処理
	static CPauseQuit *Create();

	//-------------------------------------------------------------------------
	// メンバー関数
	//-------------------------------------------------------------------------
	HRESULT Init() override;	// 初期化処理
	void Uninit() override;		// 終了処理
	void Update() override;		// 更新処理
	void Draw() override;		// 描画処理

	void BeginUpdate();
	void SelectUpdate();
	void EndUpdate();

private:
	CObject2D* m_pQuit[4];
	CObject2D* m_pOutLine[4];
};

#endif