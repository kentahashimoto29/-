//=============================================================================
// 
// サウンド処理 [sound.h]
// Author : 橋本賢太
// 
//=============================================================================
#ifndef _SOUND_H_
#define _SOUND_H_

#include "main.h"

class CSound
{
public:
	// *****************************************************************************
	// サウンド一覧
	// *****************************************************************************
	typedef enum
	{
		SOUND_LABEL_TITLE_BGM = 0,		// タイトルBGM
		SOUND_LABEL_GAME_BGM ,			// ゲームBGM
		SOUND_LABEL_RESULT_BGM,			// リザルトBGM
		SOUND_LABEL_SE_START,			// タイトルの決定音
		SOUND_LABEL_SE_ENEMY_CATHC,		// 敵を捕まえる音
		SOUND_LABEL_SE_PLAYER_SKILL,	// プレイヤーのスキル音
		SOUND_LABEL_MAX,
	} SOUND_LABEL;

	CSound();				// コンストラクタ
	~CSound();				// デストラクタ

	HRESULT Init(HWND hWnd);
	void Uninit(void);
	HRESULT PlaySound(SOUND_LABEL label);
	void StopSound(SOUND_LABEL label);
	void StopSound(void);

private:

	// *****************************************************************************
	// サウンド情報の構造体定義
	// *****************************************************************************
	typedef struct
	{
		char *pFilename;	// ファイル名
		int nCntLoop;		// ループカウント
	} SOUNDINFO;

	HRESULT CheckChunk(HANDLE hFile, DWORD format, DWORD *pChunkSize, DWORD *pChunkDataPosition);		// チャンクのチェック
	HRESULT ReadChunkData(HANDLE hFile, void *pBuffer, DWORD dwBuffersize, DWORD dwBufferoffset);		// チャンクデータの読み込み

	IXAudio2 *g_pXAudio2 = NULL;								// XAudio2オブジェクトへのインターフェイス
	IXAudio2MasteringVoice *g_pMasteringVoice = NULL;			// マスターボイス
	IXAudio2SourceVoice *g_apSourceVoice[SOUND_LABEL_MAX] = {};	// ソースボイス
	BYTE *g_apDataAudio[SOUND_LABEL_MAX] = {};					// オーディオデータ
	DWORD g_aSizeAudio[SOUND_LABEL_MAX] = {};					// オーディオデータサイズ

	// サウンドの情報
	SOUNDINFO g_aSoundInfo[SOUND_LABEL_MAX] =
	{
		{ "data/BGM/title_BGM.wav", -1 },			// タイトルBGM
		{ "data/BGM/game_BGM.wav", -1 },			// ゲームBGM
		{ "data/BGM/result_BGM.wav", -1 },			// リザルトBGM
		{ "data/SE/title_start_SE.wav", 0 },		// タイトルの決定音
		{ "data/SE/game_enemy_catch_SE.wav", 0 },	// 敵を捕まえる音
		{ "data/SE/game_player_skill_SE.wav", 0 },	// プレイヤーのスキル音
	};
};


#endif
