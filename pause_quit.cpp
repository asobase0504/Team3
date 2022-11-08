#include "pause_quit.h"
#include "object2D.h"

//=============================================================================
// コンストラクタ
//=============================================================================
CPauseQuit::CPauseQuit() :
	CObject(PRIORITY_LEVEL5)
{
	SetType(OBJTYPE_PAUSE);
}

//=============================================================================
// デストラクタ
//=============================================================================
CPauseQuit::~CPauseQuit()
{
}

//=============================================================================
// 生成処理
//=============================================================================
CPauseQuit * CPauseQuit::Create()
{
	CPauseQuit *pLogo = new CPauseQuit();

	if (pLogo != nullptr)
	{
		pLogo->Init();
	}
	else
	{
		assert(false);
	}

	return pLogo;
}

//=============================================================================
// 初期化
//=============================================================================
HRESULT CPauseQuit::Init()
{
	auto QuitCreate = [](const char* inTag)
	{
		D3DXVECTOR3 pos = D3DXVECTOR3((float)SCREEN_WIDTH_HALF, (float)SCREEN_HEIGHT_HALF, 0.0f);
		D3DXVECTOR3 size = D3DXVECTOR3(1280.0f, 720.0f, 0.0f);
		CObject2D* object = CObject2D::Create(inTag, pos, size, CObject::PRIORITY_LEVEL5);
		object->SetCanPoseUpdate();
		return object;
	};

	m_pQuit[0] = QuitCreate("QUIT_Q");
	m_pQuit[1] = QuitCreate("QUIT_I");
	m_pQuit[2] = QuitCreate("QUIT_U");
	m_pQuit[3] = QuitCreate("QUIT_T");

	return S_OK;
}

//=============================================================================
// 終了
//=============================================================================
void CPauseQuit::Uninit()
{
	for (int i = 0; i < 4; i++)
	{
		m_pQuit[i]->Uninit();
	}
	Release();
}

//=============================================================================
// 更新
//=============================================================================
void CPauseQuit::Update()
{
}

//=============================================================================
// 描画
//=============================================================================
void CPauseQuit::Draw()
{
}

//=============================================================================
// 登場更新
//=============================================================================
void CPauseQuit::BeginUpdate()
{
}

//=============================================================================
// 選択中更新
//=============================================================================
void CPauseQuit::SelectUpdate()
{
}

//=============================================================================
// 終了更新
//=============================================================================
void CPauseQuit::EndUpdate()
{
}
