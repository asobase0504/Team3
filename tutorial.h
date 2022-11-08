#ifndef _TUTORIAL_H_
#define _TUTORIAL_H_

#include "main.h"
#include "object2D.h"
#include "mode.h"

class CPlayer;
class CCamera;
class CMeshfield;
class CTime;
class CFade;
class CObstacle;

class CTutorial : public CMode
{
public:
	CTutorial();
	~CTutorial() override;

	HRESULT Init(void) override;	// ����������
	void Uninit(void) override;		// �I������
	void Update(void) override;		// �X�V����
	void Draw(void) override;		// �`�揈��
	static CTutorial *Create();			// ��������

	static CPlayer *GetPlayer1P() { return m_pPlayer; }
	static CCamera *GetCamera() { return m_pCamera; }
	static CMeshfield *GetMeshfield() { return m_pMeshField; }
	static CObstacle *GetObstacle1P() { return m_pObstacle; }

private:
	CObject2D *m_pObject2D;					// �I�u�W�F�N�g2D�̃|�C���^
	static CPlayer *m_pPlayer;			// 1P�v���C���[�̃|�C���^
	static CCamera *m_pCamera;				// �J�����̃|�C���^
	static CLight *m_pLight;				// ���C�g�̃|�C���^
	static CMeshfield *m_pMeshField;		// ���b�V���t�B�[���h�̃|�C���^	
	static CTime *m_pTime;					// �^�C���̃|�C���^
	static CObstacle *m_pObstacle;		// 1P��Q���̃|�C���^
	CFade *m_pFade;							// �t�F�[�h�̃|�C���^
};

#endif