//=============================================================================
// 
// �T�E���h���� [sound.h]
// Author : ���{����
// 
//=============================================================================
#ifndef _SOUND_H_
#define _SOUND_H_

#include "main.h"

class CSound
{
public:
	// *****************************************************************************
	// �T�E���h�ꗗ
	// *****************************************************************************
	typedef enum
	{
		SOUND_LABEL_TITLE_BGM = 0,		// �^�C�g��BGM
		SOUND_LABEL_GAME_BGM ,			// �Q�[��BGM
		SOUND_LABEL_RESULT_BGM,			// ���U���gBGM
		SOUND_LABEL_SE_START,			// �^�C�g���̌��艹
		SOUND_LABEL_SE_ENEMY_CATHC,		// �G��߂܂��鉹
		SOUND_LABEL_SE_PLAYER_SKILL,	// �v���C���[�̃X�L����
		SOUND_LABEL_MAX,
	} SOUND_LABEL;

	CSound();				// �R���X�g���N�^
	~CSound();				// �f�X�g���N�^

	HRESULT Init(HWND hWnd);
	void Uninit(void);
	HRESULT PlaySound(SOUND_LABEL label);
	void StopSound(SOUND_LABEL label);
	void StopSound(void);

private:

	// *****************************************************************************
	// �T�E���h���̍\���̒�`
	// *****************************************************************************
	typedef struct
	{
		char *pFilename;	// �t�@�C����
		int nCntLoop;		// ���[�v�J�E���g
	} SOUNDINFO;

	HRESULT CheckChunk(HANDLE hFile, DWORD format, DWORD *pChunkSize, DWORD *pChunkDataPosition);		// �`�����N�̃`�F�b�N
	HRESULT ReadChunkData(HANDLE hFile, void *pBuffer, DWORD dwBuffersize, DWORD dwBufferoffset);		// �`�����N�f�[�^�̓ǂݍ���

	IXAudio2 *g_pXAudio2 = NULL;								// XAudio2�I�u�W�F�N�g�ւ̃C���^�[�t�F�C�X
	IXAudio2MasteringVoice *g_pMasteringVoice = NULL;			// �}�X�^�[�{�C�X
	IXAudio2SourceVoice *g_apSourceVoice[SOUND_LABEL_MAX] = {};	// �\�[�X�{�C�X
	BYTE *g_apDataAudio[SOUND_LABEL_MAX] = {};					// �I�[�f�B�I�f�[�^
	DWORD g_aSizeAudio[SOUND_LABEL_MAX] = {};					// �I�[�f�B�I�f�[�^�T�C�Y

	// �T�E���h�̏��
	SOUNDINFO g_aSoundInfo[SOUND_LABEL_MAX] =
	{
		{ "data/BGM/title_BGM.wav", -1 },			// �^�C�g��BGM
		{ "data/BGM/game_BGM.wav", -1 },			// �Q�[��BGM
		{ "data/BGM/result_BGM.wav", -1 },			// ���U���gBGM
		{ "data/SE/title_start_SE.wav", 0 },		// �^�C�g���̌��艹
		{ "data/SE/game_enemy_catch_SE.wav", 0 },	// �G��߂܂��鉹
		{ "data/SE/game_player_skill_SE.wav", 0 },	// �v���C���[�̃X�L����
	};
};


#endif
