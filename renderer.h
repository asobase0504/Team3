//=============================================================================
//
// レンダリング処理 [renderer.h]
// Author : KADO TAKUMA
//
//=============================================================================
#ifndef _RENDERER_H_
#define _RENDERER_H_

//=============================================================================
// クラスの定義
//=============================================================================
class CRenderer
{
public:
	//-------------------------------------------------------------------------
	// コンストラクタとデストラクタ
	//-------------------------------------------------------------------------
	CRenderer();
	~CRenderer();

	//-------------------------------------------------------------------------
	// メンバー関数
	//-------------------------------------------------------------------------
	HRESULT Init(HWND hWnd, bool bWindow);			// 初期化処理
	void Uninit();									// 終了処理
	void Update();									// 更新処理
	void Draw();									// 描画処理
	LPDIRECT3DDEVICE9 GetDevice();					// デバイスの取得

private:
	//-------------------------------------------------------------------------
	// メンバー関数
	//-------------------------------------------------------------------------
	void DrawFPS();									// FPS表示処理

	//-------------------------------------------------------------------------
	// メンバー変数
	//-------------------------------------------------------------------------
	LPDIRECT3D9 m_pD3D;								// Direct3Dオブジェクト
	LPDIRECT3DDEVICE9 m_pD3DDevice;					// Deviceオブジェクト
	LPDIRECT3DVERTEXBUFFER9 m_pVtxBuff;				// 頂点バッファへのポインタ
	LPD3DXFONT m_pFont = nullptr;					// フォント
};

#endif