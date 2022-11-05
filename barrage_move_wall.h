//=============================================================================
//
// 連打すると動く壁ギミック
// Author : saito shian
// Author : Yuda Kaito
//
//=============================================================================
#ifndef _BARRAGE_MOVE_WALL_H_
#define _BARRAGE_MOVE_WALL_H_

//=============================================================================
// インクルードファイル
//=============================================================================
#include "gimmick.h"

//=============================================================================
// クラスの定義
//=============================================================================
class CBarrageMoveWall : public CGimmick
{
public:
	//-------------------------------------------------------------------------
	// コンストラクタとデストラクタ
	//-------------------------------------------------------------------------
	explicit CBarrageMoveWall(int nPriority = PRIORITY_LEVEL3);
	~CBarrageMoveWall() override;

	// 生成処理
	static CBarrageMoveWall *Create(const D3DXVECTOR3& pos);

	//-------------------------------------------------------------------------
	// メンバー関数
	//-------------------------------------------------------------------------
	HRESULT Init() override;		// 初期化処理
	void Uninit() override;			// 終了処理
	void Update() override;			// 更新処理
	void Draw() override;			// 描画処理

	void ConstOperate() override;	// 一定の操作(連打、回転)
	void KeyCount();				// キーをカウントする関数

	// Gimmickが完了済みか
	bool GetCompletion(void) { return m_Completion; }
	void SetCompletion(bool bflag) { m_Completion = bflag; }

private:
	//-------------------------------------------------------------------------
	// メンバー変数
	//-------------------------------------------------------------------------
	D3DXVECTOR3 m_PosOld;			// 前回の位置
	int m_nTriggerCount;			// キーを押した回数

	bool m_Completion;				// Gimmickが完了したか否かフラグ
};
#endif
