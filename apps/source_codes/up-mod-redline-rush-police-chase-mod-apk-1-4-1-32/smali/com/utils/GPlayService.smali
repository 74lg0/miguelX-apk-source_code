.class public Lcom/utils/GPlayService;
.super Ljava/lang/Object;
.source "GPlayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/utils/GPlayService$SigninState;
    }
.end annotation


# static fields
.field public static final ACHIEVEMENTS_UI_CODE:I = 0x2712

.field public static final LEADERBOARD_UI_CODE:I = 0x2711

.field public static final SAVED_GAMES_UI_CODE:I = 0x2713

.field public static final SETTINGS_UI_CODE:I = 0x2713

.field public static final SIGN_IN_CODE:I = 0x2710

.field private static _instance:Lcom/utils/GPlayService;

.field protected static final mDebugLog:Z

.field private static volatile sNativeInitialized:Z


# instance fields
.field private final Flag_AddLocalPlayer:I

.field private final Flag_FriendsOnly:I

.field private final Flag_LastDay:I

.field private final Flag_LastWeek:I

.field entry:Lcom/utils/GPLeaderboardEntry;

.field public mActivity:Landroid/app/Activity;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mImageLoader:Lcom/utils/GPlayServiceImageLoader;

.field public mLastSavedGamesUILoadID:I

.field private mPlayerID:Ljava/lang/String;

.field private mPlayerName:Ljava/lang/String;

.field private mRunWhenSigninFinished:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSigninErrorCode:I

.field private mSigninState:Lcom/utils/GPlayService$SigninState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    .line 55
    sget-object v0, Lcom/utils/GPlayService$SigninState;->Unknown:Lcom/utils/GPlayService$SigninState;

    iput-object v0, p0, Lcom/utils/GPlayService;->mSigninState:Lcom/utils/GPlayService$SigninState;

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/utils/GPlayService;->mRunWhenSigninFinished:Ljava/util/Vector;

    const-string v0, ""

    .line 59
    iput-object v0, p0, Lcom/utils/GPlayService;->mPlayerName:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/utils/GPlayService;->mPlayerID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/utils/GPlayService;->mLastSavedGamesUILoadID:I

    .line 70
    iput v0, p0, Lcom/utils/GPlayService;->mSigninErrorCode:I

    const/4 v0, 0x1

    .line 762
    iput v0, p0, Lcom/utils/GPlayService;->Flag_FriendsOnly:I

    const/4 v0, 0x2

    .line 763
    iput v0, p0, Lcom/utils/GPlayService;->Flag_AddLocalPlayer:I

    const/4 v0, 0x4

    .line 764
    iput v0, p0, Lcom/utils/GPlayService;->Flag_LastDay:I

    const/16 v0, 0x8

    .line 765
    iput v0, p0, Lcom/utils/GPlayService;->Flag_LastWeek:I

    .line 782
    new-instance v0, Lcom/utils/GPLeaderboardEntry;

    invoke-direct {v0}, Lcom/utils/GPLeaderboardEntry;-><init>()V

    iput-object v0, p0, Lcom/utils/GPlayService;->entry:Lcom/utils/GPLeaderboardEntry;

    return-void
.end method

.method private static _log(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/utils/GPlayService;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/utils/GPlayService;->signIn(Z)V

    return-void
.end method

.method static synthetic access$1000(IZ[BI)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/utils/GPlayService;->onCloudDataLoadedCallback(IZ[BI)V

    return-void
.end method

.method static synthetic access$1100(IZ)V
    .locals 0

    .line 39
    invoke-static {p0, p1}, Lcom/utils/GPlayService;->onCloudDataSavedCallback(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/utils/GPlayService;Ljava/lang/String;IILcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;IZ)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p6}, Lcom/utils/GPlayService;->continueWithLeaderboardMoreScores(Ljava/lang/String;IILcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/utils/GPlayService;Ljava/lang/String;IILjava/util/Vector;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/utils/GPlayService;->continueWithLeaderboardCurrentPlayerScore(Ljava/lang/String;IILjava/util/Vector;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/utils/GPlayService;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/utils/GPlayService;->callOnGetLeaderboardDataCallback(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/utils/GPlayService;Ljava/lang/String;IILjava/util/Vector;Lcom/utils/GPLeaderboardEntry;)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/utils/GPlayService;->continueWithLeaderboardCurrentPlayerScoreFallback(Ljava/lang/String;IILjava/util/Vector;Lcom/utils/GPLeaderboardEntry;)V

    return-void
.end method

.method static synthetic access$1600(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/utils/GPlayService;->onGetLeaderboardScoresFinished(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/utils/GPlayService;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/utils/GPlayService;->onSignInSucceeded()V

    return-void
.end method

.method static synthetic access$302(Lcom/utils/GPlayService;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/utils/GPlayService;->mSigninErrorCode:I

    return p1
.end method

.method static synthetic access$400(Lcom/utils/GPlayService;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/utils/GPlayService;->onSignInFailed()V

    return-void
.end method

.method static synthetic access$500(Lcom/utils/GPlayService;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/utils/GPlayService;->mPlayerName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/utils/GPlayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/utils/GPlayService;->mPlayerName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/utils/GPlayService;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/utils/GPlayService;->mPlayerID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/utils/GPlayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/utils/GPlayService;->mPlayerID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/utils/GPlayService;->sNativeInitialized:Z

    return v0
.end method

.method static synthetic access$800(Lcom/utils/GPlayService;IZ[BI)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/utils/GPlayService;->callOnCloudDataLoadedCallback(IZ[BI)V

    return-void
.end method

.method static synthetic access$900(Lcom/utils/GPlayService;IZ)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/utils/GPlayService;->callOnCloudDataSavedCallback(IZ)V

    return-void
.end method

.method private callOnCloudDataLoadedCallback(IZ[BI)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "success",
            "data",
            "errorCode"
        }
    .end annotation

    .line 741
    new-instance v6, Lcom/utils/GPlayService$17;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/utils/GPlayService$17;-><init>(Lcom/utils/GPlayService;IZ[BI)V

    invoke-virtual {p0, v6}, Lcom/utils/GPlayService;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private callOnCloudDataSavedCallback(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "success"
        }
    .end annotation

    .line 750
    new-instance v0, Lcom/utils/GPlayService$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/utils/GPlayService$18;-><init>(Lcom/utils/GPlayService;IZ)V

    invoke-virtual {p0, v0}, Lcom/utils/GPlayService;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private callOnGetLeaderboardDataCallback(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "leaderboardID",
            "errorCode",
            "entries"
        }
    .end annotation

    .line 1060
    new-instance v0, Lcom/utils/GPlayService$23;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/utils/GPlayService$23;-><init>(Lcom/utils/GPlayService;Ljava/lang/String;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/utils/GPlayService;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private callSigninFinishedCallbacks()V
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/utils/GPlayService;->mRunWhenSigninFinished:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 479
    iget-object v1, p0, Lcom/utils/GPlayService;->mRunWhenSigninFinished:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    const/4 v1, 0x0

    .line 480
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 481
    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkScopes()Z
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getGrantedScopes()Ljava/util/Set;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Signed in but we don\'t have SCOPE_APPFOLDER sign in again"

    .line 461
    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "Signed in and we have SCOPE_APPFOLDER scope"

    .line 466
    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 469
    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private continueWithLeaderboardCurrentPlayerScore(Ljava/lang/String;IILjava/util/Vector;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "leaderboardId",
            "span",
            "collection",
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Vector<",
            "Lcom/utils/GPLeaderboardEntry;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_1

    .line 870
    :try_start_0
    invoke-virtual {p0}, Lcom/utils/GPlayService;->getLoggedInPlayerID()Ljava/lang/String;

    move-result-object v0

    .line 871
    invoke-virtual {p4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/utils/GPLeaderboardEntry;

    .line 873
    iget-object v2, v2, Lcom/utils/GPLeaderboardEntry;->mPlayerID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p2, "continueWithLeaderboardCurrentPlayerScore: found current player in list."

    .line 875
    invoke-static {p2}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 876
    invoke-virtual {p4}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/utils/GPlayService;->callOnGetLeaderboardDataCallback(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "continueWithLeaderboardCurrentPlayerScore: calling loadPlayerCenteredScores"

    .line 882
    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v0

    .line 885
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/LeaderboardsClient;->loadCurrentPlayerLeaderboardScore(Ljava/lang/String;II)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v7, Lcom/utils/GPlayService$20;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/utils/GPlayService$20;-><init>(Lcom/utils/GPlayService;Ljava/util/Vector;Ljava/lang/String;II)V

    .line 886
    invoke-virtual {v0, v7}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 922
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getLeaderboardScores - excp: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    const/16 p2, 0xd

    const/4 p3, 0x0

    .line 923
    invoke-direct {p0, p1, p2, p3}, Lcom/utils/GPlayService;->callOnGetLeaderboardDataCallback(Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private continueWithLeaderboardCurrentPlayerScoreFallback(Ljava/lang/String;IILjava/util/Vector;Lcom/utils/GPLeaderboardEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "leaderboardId",
            "span",
            "collection",
            "entries",
            "localPlayerEntry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Vector<",
            "Lcom/utils/GPLeaderboardEntry;",
            ">;",
            "Lcom/utils/GPLeaderboardEntry;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string v0, "continueWithLeaderboardCurrentPlayerScore: calling loadPlayerCenteredScores"

    .line 931
    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v0

    const/16 v1, 0x19

    .line 933
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/google/android/gms/games/LeaderboardsClient;->loadPlayerCenteredScores(Ljava/lang/String;III)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance p3, Lcom/utils/GPlayService$21;

    invoke-direct {p3, p0, p5, p4, p1}, Lcom/utils/GPlayService$21;-><init>(Lcom/utils/GPlayService;Lcom/utils/GPLeaderboardEntry;Ljava/util/Vector;Ljava/lang/String;)V

    .line 934
    invoke-virtual {p2, p3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 991
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "loadPlayerCenteredScores - excp: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    const/16 p2, 0xd

    const/4 p3, 0x0

    .line 992
    invoke-direct {p0, p1, p2, p3}, Lcom/utils/GPlayService;->callOnGetLeaderboardDataCallback(Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private continueWithLeaderboardMoreScores(Ljava/lang/String;IILcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0,
            0x10,
            0x10
        }
        names = {
            "leaderboardId",
            "span",
            "collection",
            "buffer",
            "count",
            "addLocalPlayer"
        }
    .end annotation

    :try_start_0
    const-string v0, "continueWithLeaderboardMoreScores"

    .line 1002
    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v0

    const/16 v1, 0x19

    .line 1004
    invoke-static {v1, p5}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, p4, v1, v2}, Lcom/google/android/gms/games/LeaderboardsClient;->loadMoreScores(Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)Lcom/google/android/gms/tasks/Task;

    move-result-object p4

    new-instance v7, Lcom/utils/GPlayService$22;

    move-object v0, v7

    move-object v1, p0

    move v2, p5

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/utils/GPlayService$22;-><init>(Lcom/utils/GPlayService;ILjava/lang/String;IIZ)V

    .line 1005
    invoke-virtual {p4, v7}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1052
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "loadMoreScores - excp: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    const/16 p2, 0x17

    const/4 p3, 0x0

    .line 1053
    invoke-direct {p0, p1, p2, p3}, Lcom/utils/GPlayService;->callOnGetLeaderboardDataCallback(Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/utils/GPlayService;
    .locals 1

    .line 75
    sget-object v0, Lcom/utils/GPlayService;->_instance:Lcom/utils/GPlayService;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/utils/GPlayService;

    invoke-direct {v0}, Lcom/utils/GPlayService;-><init>()V

    sput-object v0, Lcom/utils/GPlayService;->_instance:Lcom/utils/GPlayService;

    .line 78
    :cond_0
    sget-object v0, Lcom/utils/GPlayService;->_instance:Lcom/utils/GPlayService;

    return-object v0
.end method

.method private static native onCloudDataLoadedCallback(IZ[BI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "id",
            "success",
            "data",
            "errorCode"
        }
    .end annotation
.end method

.method private static native onCloudDataSavedCallback(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "success"
        }
    .end annotation
.end method

.method private static native onGetLeaderboardScoresFinished(Ljava/lang/String;I[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "leaderboardID",
            "errorCode",
            "entries"
        }
    .end annotation
.end method

.method private onSignInFailed()V
    .locals 1

    .line 486
    sget-object v0, Lcom/utils/GPlayService$SigninState;->Failed:Lcom/utils/GPlayService$SigninState;

    iput-object v0, p0, Lcom/utils/GPlayService;->mSigninState:Lcom/utils/GPlayService$SigninState;

    .line 488
    invoke-direct {p0}, Lcom/utils/GPlayService;->callSigninFinishedCallbacks()V

    return-void
.end method

.method private onSignInSucceeded()V
    .locals 2

    .line 493
    invoke-direct {p0}, Lcom/utils/GPlayService;->checkScopes()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onSignInSucceeded but we have no scopes. FAILED"

    .line 495
    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 496
    invoke-direct {p0}, Lcom/utils/GPlayService;->onSignInFailed()V

    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/utils/GPlayService;->mPlayerName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/utils/GPlayService;->mPlayerID:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/utils/GPlayService;->mPlayerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "signed in successfully."

    .line 535
    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 537
    sget-object v0, Lcom/utils/GPlayService$SigninState;->Succeeded:Lcom/utils/GPlayService$SigninState;

    iput-object v0, p0, Lcom/utils/GPlayService;->mSigninState:Lcom/utils/GPlayService$SigninState;

    .line 539
    invoke-direct {p0}, Lcom/utils/GPlayService;->callSigninFinishedCallbacks()V

    .line 541
    iget-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getGamesClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/GamesClient;

    move-result-object v0

    iget-object v1, p0, Lcom/utils/GPlayService;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/GamesClient;->setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/tasks/Task;

    .line 543
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/utils/GPlayService$9;

    invoke-direct {v1, p0}, Lcom/utils/GPlayService$9;-><init>(Lcom/utils/GPlayService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 567
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2
    :goto_0
    const-string v0, "signed in. getting user infos."

    .line 502
    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getPlayersClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/PlayersClient;->getCurrentPlayer()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/utils/GPlayService$8;

    invoke-direct {v1, p0}, Lcom/utils/GPlayService$8;-><init>(Lcom/utils/GPlayService;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private signIn(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "useUIIfNeeded"
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "signIn useUIIfNeeded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/utils/GPlayService;->mSigninState:Lcom/utils/GPlayService$SigninState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/utils/GPlayService;->mSigninState:Lcom/utils/GPlayService$SigninState;

    sget-object v1, Lcom/utils/GPlayService$SigninState;->InProgress:Lcom/utils/GPlayService$SigninState;

    if-ne v0, v1, :cond_0

    return-void

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/utils/GPlayService;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "already signed in. checking scopes"

    .line 379
    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/utils/GPlayService;->checkScopes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object p1, p0, Lcom/utils/GPlayService;->mSigninState:Lcom/utils/GPlayService$SigninState;

    sget-object v0, Lcom/utils/GPlayService$SigninState;->Succeeded:Lcom/utils/GPlayService$SigninState;

    if-eq p1, v0, :cond_3

    .line 383
    invoke-direct {p0}, Lcom/utils/GPlayService;->onSignInSucceeded()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 387
    iget-object p1, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    .line 388
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/utils/GPlayService$5;

    invoke-direct {v1, p0}, Lcom/utils/GPlayService$5;-><init>(Lcom/utils/GPlayService;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 399
    :cond_2
    iget-object p1, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    .line 400
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/utils/GPlayService$6;

    invoke-direct {v1, p0}, Lcom/utils/GPlayService$6;-><init>(Lcom/utils/GPlayService;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 409
    invoke-direct {p0}, Lcom/utils/GPlayService;->onSignInFailed()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v0, "signing in..."

    .line 414
    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 416
    sget-object v0, Lcom/utils/GPlayService$SigninState;->InProgress:Lcom/utils/GPlayService$SigninState;

    iput-object v0, p0, Lcom/utils/GPlayService;->mSigninState:Lcom/utils/GPlayService$SigninState;

    const-string v0, ""

    .line 418
    iput-object v0, p0, Lcom/utils/GPlayService;->mPlayerName:Ljava/lang/String;

    .line 419
    iput-object v0, p0, Lcom/utils/GPlayService;->mPlayerID:Ljava/lang/String;

    .line 421
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    sget-object v1, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->silentSignIn()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/utils/GPlayService$7;

    invoke-direct {v3, p0, p1, v0}, Lcom/utils/GPlayService$7;-><init>(Lcom/utils/GPlayService;ZLcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public cloudLoadData(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "id"
        }
    .end annotation

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloudLoadData name: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/utils/GPlayService;->isSignedIn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/utils/GPlayService;->mSigninState:Lcom/utils/GPlayService$SigninState;

    sget-object v2, Lcom/utils/GPlayService$SigninState;->Failed:Lcom/utils/GPlayService$SigninState;

    if-ne v0, v2, :cond_0

    const-string p1, "cloudLoadData signin failed. cloudloaddata failed too."

    .line 589
    invoke-static {p1}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 590
    iget v0, p0, Lcom/utils/GPlayService;->mSigninErrorCode:I

    invoke-direct {p0, p2, v1, p1, v0}, Lcom/utils/GPlayService;->callOnCloudDataLoadedCallback(IZ[BI)V

    goto :goto_0

    :cond_0
    const-string v0, "cloudLoadData was called before gplay is initialized. delaying call"

    .line 594
    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/utils/GPlayService;->mRunWhenSigninFinished:Ljava/util/Vector;

    new-instance v1, Lcom/utils/GPlayService$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/utils/GPlayService$10;-><init>(Lcom/utils/GPlayService;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    const-string v0, "cloudLoadData signIn succeeded"

    .line 605
    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 609
    iget-object p1, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->getSnapshotsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object p1

    const/4 v0, -0x1

    const-string v2, "My Saves"

    .line 611
    invoke-interface {p1, v2, v1, v1, v0}, Lcom/google/android/gms/games/SnapshotsClient;->getSelectSnapshotIntent(Ljava/lang/String;ZZI)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 613
    new-instance v0, Lcom/utils/GPlayService$11;

    invoke-direct {v0, p0, p2}, Lcom/utils/GPlayService$11;-><init>(Lcom/utils/GPlayService;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1

    .line 631
    :cond_2
    iget-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getSnapshotsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "opening Snapshot."

    .line 636
    invoke-static {v2}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 639
    invoke-interface {v0, p1, v2, v1}, Lcom/google/android/gms/games/SnapshotsClient;->open(Ljava/lang/String;ZI)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/utils/GPlayService$14;

    invoke-direct {v0, p0, p2}, Lcom/utils/GPlayService$14;-><init>(Lcom/utils/GPlayService;I)V

    .line 640
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/utils/GPlayService$13;

    invoke-direct {v0, p0}, Lcom/utils/GPlayService$13;-><init>(Lcom/utils/GPlayService;)V

    .line 646
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/utils/GPlayService$12;

    invoke-direct {v0, p0, p2}, Lcom/utils/GPlayService$12;-><init>(Lcom/utils/GPlayService;I)V

    .line 659
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :goto_1
    return-void
.end method

.method public cloudSaveData(Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "description",
            "id",
            "data"
        }
    .end annotation

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloudSaveData name: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' desc = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lcom/utils/GPlayService;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "cloudSave skipped because not logged in"

    .line 690
    invoke-static {p1}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getSnapshotsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v6

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 700
    invoke-interface {v6, p1, v1, v0}, Lcom/google/android/gms/games/SnapshotsClient;->open(Ljava/lang/String;ZI)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/utils/GPlayService$16;

    invoke-direct {v0, p0, p3}, Lcom/utils/GPlayService$16;-><init>(Lcom/utils/GPlayService;I)V

    .line 701
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/utils/GPlayService$15;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p4

    move-object v5, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/utils/GPlayService$15;-><init>(Lcom/utils/GPlayService;[BLjava/lang/String;Lcom/google/android/gms/games/SnapshotsClient;I)V

    .line 707
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public getLeaderboardScores(Ljava/lang/String;II)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "leaderboardId",
            "count",
            "flags"
        }
    .end annotation

    .line 786
    invoke-virtual {p0}, Lcom/utils/GPlayService;->isSignedIn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 789
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLeaderboardsData leaderboardId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    const/4 v7, 0x3

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    and-int/lit8 v0, p3, 0x8

    const/4 v2, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x2

    :goto_1
    and-int/2addr p3, v2

    if-eqz p3, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    if-lez p2, :cond_5

    .line 800
    :try_start_0
    iget-object p3, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object p3

    const/16 v0, 0x19

    .line 801
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {p3, p1, v6, v7, v0}, Lcom/google/android/gms/games/LeaderboardsClient;->loadTopScores(Ljava/lang/String;III)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    new-instance v0, Lcom/utils/GPlayService$19;

    move-object v2, v0

    move-object v3, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/utils/GPlayService$19;-><init>(Lcom/utils/GPlayService;ILjava/lang/String;IIZ)V

    .line 802
    invoke-virtual {p3, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v9

    :catch_0
    move-exception p1

    .line 850
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getLeaderboardScores - excp: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    return v1

    :cond_5
    if-eqz v8, :cond_6

    .line 857
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, p1, v6, v7, p2}, Lcom/utils/GPlayService;->continueWithLeaderboardCurrentPlayerScore(Ljava/lang/String;IILjava/util/Vector;)V

    return v9

    :cond_6
    return v1
.end method

.method public getLoggedInPlayerID()Ljava/lang/String;
    .locals 3

    .line 299
    :try_start_0
    invoke-virtual {p0}, Lcom/utils/GPlayService;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/utils/GPlayService;->mPlayerID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLoggedInPlayerID - excp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getLoggedInPlayerName()Ljava/lang/String;
    .locals 3

    .line 314
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLoggedInPlayerName returns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/utils/GPlayService;->mPlayerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/utils/GPlayService;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/utils/GPlayService;->mPlayerName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLoggedInPlayerName - excp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public init(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "glSurfaceView"
        }
    .end annotation

    const-string v0, "init..."

    .line 95
    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    .line 97
    iput-object p2, p0, Lcom/utils/GPlayService;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 98
    new-instance p2, Lcom/utils/GPlayServiceImageLoader;

    invoke-direct {p2, p1}, Lcom/utils/GPlayServiceImageLoader;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/utils/GPlayService;->mImageLoader:Lcom/utils/GPlayServiceImageLoader;

    .line 100
    iget-object p1, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    const-string p2, "GPlayService"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "startCount"

    .line 101
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 102
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    add-int/lit8 v2, v1, 0x1

    .line 103
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startCount "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_0

    const-string p2, "forcing signin"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 108
    :cond_1
    invoke-direct {p0, v0}, Lcom/utils/GPlayService;->signIn(Z)V

    return-void
.end method

.method protected isSignedIn()Z
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "response",
            "intent"
        }
    .end annotation

    const-string v0, "com.google.android.gms.games.SNAPSHOT_METADATA"

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    const/16 p2, 0x2710

    if-ne p1, p2, :cond_0

    .line 330
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 333
    :try_start_0
    const-class p2, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 334
    invoke-direct {p0}, Lcom/utils/GPlayService;->onSignInSucceeded()V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 336
    invoke-direct {p0}, Lcom/utils/GPlayService;->onSignInFailed()V

    .line 337
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p2

    iput p2, p0, Lcom/utils/GPlayService;->mSigninErrorCode:I

    .line 338
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult signin failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x2713

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_1

    .line 346
    :try_start_1
    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 349
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    .line 350
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object p1

    .line 352
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "currentSaveName:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 353
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "currentSave loadID:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/utils/GPlayService;->mLastSavedGamesUILoadID:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 355
    iget p2, p0, Lcom/utils/GPlayService;->mLastSavedGamesUILoadID:I

    invoke-virtual {p0, p1, p2}, Lcom/utils/GPlayService;->cloudLoadData(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 360
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult saved games ui failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0}, Lcom/utils/GPlayService;->signIn(Z)V

    return-void
.end method

.method public native onSignedInCallback()V
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method parseScore(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Lcom/utils/GPLeaderboardEntry;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sc"
        }
    .end annotation

    .line 772
    new-instance v0, Lcom/utils/GPLeaderboardEntry;

    invoke-direct {v0}, Lcom/utils/GPLeaderboardEntry;-><init>()V

    .line 773
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/utils/GPLeaderboardEntry;->mPlayerID:Ljava/lang/String;

    .line 774
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/utils/GPLeaderboardEntry;->mPlayerName:Ljava/lang/String;

    .line 775
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRank()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lcom/utils/GPLeaderboardEntry;->mRank:I

    .line 776
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/utils/GPLeaderboardEntry;->mFormattedScore:Ljava/lang/String;

    .line 777
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J

    move-result-wide v1

    long-to-int p1, v1

    iput p1, v0, Lcom/utils/GPLeaderboardEntry;->mScore:I

    return-object v0
.end method

.method public runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pRunnable"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/utils/GPlayService;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setAchievementCounter(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "achId",
            "v"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAchievementCounter - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    .line 231
    :try_start_0
    invoke-virtual {p0}, Lcom/utils/GPlayService;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/AchievementsClient;->setSteps(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 238
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAchProgress - excp: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setHighScore(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ldbId",
            "score"
        }
    .end annotation

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/utils/GPlayService;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v0

    int-to-long v1, p2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/games/LeaderboardsClient;->submitScore(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 290
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setHighScore - excp: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setNativeInit()V
    .locals 1

    const/4 v0, 0x1

    .line 89
    sput-boolean v0, Lcom/utils/GPlayService;->sNativeInitialized:Z

    const-string v0, "setNativeInit"

    .line 90
    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    return-void
.end method

.method public showAchievements()V
    .locals 3

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/utils/GPlayService;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 178
    invoke-direct {p0, v0}, Lcom/utils/GPlayService;->signIn(Z)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Lcom/google/android/gms/games/AchievementsClient;->getAchievementsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/utils/GPlayService$3;

    invoke-direct {v1, p0}, Lcom/utils/GPlayService$3;-><init>(Lcom/utils/GPlayService;)V

    .line 184
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/utils/GPlayService$2;

    invoke-direct {v1, p0}, Lcom/utils/GPlayService$2;-><init>(Lcom/utils/GPlayService;)V

    .line 197
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAchievements - excp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showGPlaySettings()V
    .locals 3

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/utils/GPlayService;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 126
    invoke-direct {p0, v0}, Lcom/utils/GPlayService;->signIn(Z)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getGamesClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/GamesClient;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Lcom/google/android/gms/games/GamesClient;->getSettingsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/utils/GPlayService$1;

    invoke-direct {v1, p0}, Lcom/utils/GPlayService$1;-><init>(Lcom/utils/GPlayService;)V

    .line 132
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showGPlaySettings - excp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showLeaderboards()V
    .locals 3

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/utils/GPlayService;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 252
    invoke-direct {p0, v0}, Lcom/utils/GPlayService;->signIn(Z)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Lcom/google/android/gms/games/LeaderboardsClient;->getAllLeaderboardsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/utils/GPlayService$4;

    invoke-direct {v1, p0}, Lcom/utils/GPlayService$4;-><init>(Lcom/utils/GPlayService;)V

    .line 258
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLeaderboards - excp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showSignIn()V
    .locals 3

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/utils/GPlayService;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 160
    invoke-direct {p0, v0}, Lcom/utils/GPlayService;->signIn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSignIn - excp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public unlockAchievement(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "achId"
        }
    .end annotation

    .line 215
    :try_start_0
    invoke-virtual {p0}, Lcom/utils/GPlayService;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/AchievementsClient;->unlock(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unlockAchievement - excp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/GPlayService;->_log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
