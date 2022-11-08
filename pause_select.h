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
#include <vector>

//=============================================================================
// 前方宣言
//=============================================================================
class CObject2D;

//=============================================================================
// クラスの定義
//=============================================================================
class CPauseSelect : public CObject
{
public:
	enum ESelect
	{
		QUIT,
		RETRY,
		EXIT
	};

public:
	//-------------------------------------------------------------------------
	// コンストラクタとデストラクタ
	//-------------------------------------------------------------------------
	CPauseSelect();
	~CPauseSelect() override;

	// 生成処理
	static CPauseSelect *Create(ESelect inSelect);

	//-------------------------------------------------------------------------
	// メンバー関数
	//-------------------------------------------------------------------------
	HRESULT Init() override;	// 初期化処理
	void Uninit() override;		// 終了処理
	void Update() override;		// 更新処理
	void Draw() override;		// 描画処理

	void BeginUpdate();
	void SelectNowUpdate();
	void SelectNoUpdate();
	void EndNowUpdate();
	void EndNoUpdate();

private:
	std::vector<CObject2D*> m_pText;
};

#endif