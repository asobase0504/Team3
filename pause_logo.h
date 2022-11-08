//=============================================================================
//
// �|�[�Y���� [ pause.h ]
// Author : Yuda Kaito
//
//=============================================================================
#ifndef _PAUSE_LOGO_H_
#define _PAUSE_LOGO_H_

//=============================================================================
// �C���N���[�h�t�@�C��
//=============================================================================
#include "main.h"
#include "object.h"

//=============================================================================
// �O���錾
//=============================================================================
class CObject2D;

//=============================================================================
// �N���X�̒�`
//=============================================================================
class CPauseLogo : public CObject
{
public:
	//-------------------------------------------------------------------------
	// �R���X�g���N�^�ƃf�X�g���N�^
	//-------------------------------------------------------------------------
	CPauseLogo();
	~CPauseLogo() override;

	// ��������
	static CPauseLogo *Create();

	//-------------------------------------------------------------------------
	// �����o�[�֐�
	//-------------------------------------------------------------------------
	HRESULT Init() override;	// ����������
	void Uninit() override;		// �I������
	void Update() override;		// �X�V����
	void Draw() override;		// �`�揈��

private:
	CObject2D* m_pLogo[4];
};

#endif