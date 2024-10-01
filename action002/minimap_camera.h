//========================================================
// 
// �~�j�}�b�v�J���� (minimap_camera.h)
// Author ���{����
// 
//========================================================
#ifndef _MINIMAP_CAMERA_H_
#define _MINIMAP_CAMERA_H_
#include "main.h"

//===================================
// �~�j�}�b�v�J�����̃N���X
//===================================
class CMinimap_Camera
{
public:

	typedef enum
	{
		TYPE_NONE = 0,
		TYPE_SCOPE,
		TYPE_MAX
	}TYPE;

	CMinimap_Camera();									// �R���X�g���N�^
	~CMinimap_Camera();									// �f�X�g���N�^

	HRESULT Init(void);									// ����������
	void Uninit(void);									// �I������
	void Update(void);									// �X�V����
	void SetCamera(void);								// �J�����̐ݒ菈��
	void SetPos(D3DXVECTOR3 posV, D3DXVECTOR3 posR);	// �ʒu�̐ݒ菈��
	void SetPosGame(D3DXVECTOR3 posV, D3DXVECTOR3 posR);// �ʒu�̐ݒ菈��

	void SetRot(D3DXVECTOR3 rot) { m_rot = rot; }		// ������ݒ�
	D3DXVECTOR3 GetRot(void);							// ������Ԃ�

private:
	D3DXVECTOR3 m_posV;						// ���_
	D3DXVECTOR3 m_posR;						// �����_
	D3DXVECTOR3 m_keepPosV;					// �ۑ��p���_
	D3DXVECTOR3 m_keepPosR;					// �ۑ��p�����_
	D3DXVECTOR3 m_vecU;						// ������̃x�N�g��
	D3DXVECTOR3 m_rot;						// ����
	D3DXMATRIX m_mtxProjection;				// �v���W�F�N�V�����}�g���b�N�X
	D3DXMATRIX m_mtxView;					// �r���[�}�g���b�N�X

	D3DVIEWPORT9 m_viewport;

	float m_Distance;           // ���_�ƒ����_�̋���
	float m_Angle;              // ���_�ƒ����_�̊p�x
	D3DXVECTOR3 m_Angle2;
	TYPE m_type;
};

#endif