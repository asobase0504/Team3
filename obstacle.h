//=============================================================================
//
// 障害物処理 [obstacle.h]
// Author : saito shian
//
//=============================================================================
#ifndef _OBSTACLE_H_
#define _OBSTACLE_H_

//=============================================================================
// インクルードファイル
//=============================================================================
#include "gimmick.h"

//=============================================================================
// 前方定義
//=============================================================================

//=============================================================================
// クラスの定義
//=============================================================================
class CObstacle : public CGimmick
{
public:
	//-------------------------------------------------------------------------
	// コンストラクタとデストラクタ
	//-------------------------------------------------------------------------
	explicit CObstacle(int nPriority = PRIORITY_LEVEL3);
	~CObstacle() override;

	//-------------------------------------------------------------------------
	// メンバー関数
	//-------------------------------------------------------------------------
	HRESULT Init() override;			// 初期化処理
	void Uninit() override;				// 終了処理
	void Update() override;				// 更新処理
	void Draw() override;				// 描画処理

	void ConstOperate(int barrage, int rotate) override;			// 一定の操作(連打、回転)

	static CObstacle *Create(const D3DXVECTOR3 pos, GIMMICKTYPE gimmicktype,SHAPETYPE shapetype, int nPriority); // 生成処理

private:
	//-------------------------------------------------------------------------
	// メンバー変数
	//-------------------------------------------------------------------------
	int m_nTriggerCount;			// キーを押した回数
	bool m_nAlternateFlag;			// 交互にキーを押しているか
};
#endif
