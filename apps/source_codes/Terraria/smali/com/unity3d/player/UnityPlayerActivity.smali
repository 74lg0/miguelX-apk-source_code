.class public Lcom/unity3d/player/UnityPlayerActivity;
.super Landroid/app/Activity;
.source "UnityPlayerActivity.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnGenericMotionListener;


# instance fields
.field PressedStates:[Z

.field protected mUnityPlayer:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x14a

    new-array v0, v0, [Z

    .line 417
    iput-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->PressedStates:[Z

    return-void
.end method


# virtual methods
.method GetUnityKeyCode(I)I
    .locals 5

    const/16 v0, 0x3b

    const/16 v1, 0x3d

    const/16 v2, 0x1d

    const/16 v3, 0x8

    if-lt p1, v2, :cond_0

    const/16 v4, 0x36

    if-gt p1, v4, :cond_0

    sub-int/2addr p1, v2

    add-int/lit8 v0, p1, 0x61

    goto/16 :goto_1

    :cond_0
    if-lt p1, v3, :cond_1

    const/16 v2, 0x10

    if-gt p1, v2, :cond_1

    sub-int/2addr p1, v3

    add-int/lit8 v0, p1, 0x31

    goto/16 :goto_1

    :cond_1
    const/16 v2, 0x83

    if-lt p1, v2, :cond_2

    const/16 v4, 0x8e

    if-gt p1, v4, :cond_2

    sub-int/2addr p1, v2

    add-int/lit16 v0, p1, 0x11a

    goto/16 :goto_1

    :cond_2
    const/16 v2, 0x6f

    if-eq p1, v2, :cond_20

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x44

    if-ne p1, v2, :cond_4

    const/16 v0, 0x60

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x7

    if-ne p1, v2, :cond_5

    const/16 v0, 0x30

    goto/16 :goto_1

    :cond_5
    const/16 v2, 0x3e

    if-ne p1, v2, :cond_6

    const/16 v0, 0x20

    goto/16 :goto_1

    :cond_6
    const/16 v2, 0x45

    if-ne p1, v2, :cond_7

    const/16 v0, 0x2d

    goto/16 :goto_1

    :cond_7
    const/16 v2, 0x46

    if-ne p1, v2, :cond_8

    move v0, v1

    goto/16 :goto_1

    :cond_8
    const/16 v2, 0x43

    if-ne p1, v2, :cond_9

    move v0, v3

    goto/16 :goto_1

    :cond_9
    const/16 v2, 0x70

    if-ne p1, v2, :cond_a

    const/16 v0, 0x7f

    goto/16 :goto_1

    :cond_a
    if-ne p1, v0, :cond_b

    const/16 v0, 0x130

    goto/16 :goto_1

    :cond_b
    const/16 v2, 0x3c

    if-ne p1, v2, :cond_c

    const/16 v0, 0x12f

    goto/16 :goto_1

    :cond_c
    const/16 v2, 0x42

    if-ne p1, v2, :cond_d

    const/16 v0, 0xd

    goto/16 :goto_1

    :cond_d
    const/16 v2, 0x16

    if-ne p1, v2, :cond_e

    const/16 v0, 0x113

    goto/16 :goto_1

    :cond_e
    const/16 v2, 0x15

    if-ne p1, v2, :cond_f

    const/16 v0, 0x114

    goto/16 :goto_1

    :cond_f
    const/16 v2, 0x13

    if-ne p1, v2, :cond_10

    const/16 v0, 0x111

    goto/16 :goto_1

    :cond_10
    const/16 v2, 0x14

    if-ne p1, v2, :cond_11

    const/16 v0, 0x112

    goto/16 :goto_1

    :cond_11
    const/16 v2, 0x37

    if-ne p1, v2, :cond_12

    const/16 v0, 0x2c

    goto/16 :goto_1

    :cond_12
    const/16 v2, 0x38

    if-ne p1, v2, :cond_13

    const/16 v0, 0x2e

    goto :goto_1

    :cond_13
    const/16 v2, 0x4c

    if-ne p1, v2, :cond_14

    const/16 v0, 0x2f

    goto :goto_1

    :cond_14
    const/16 v2, 0x39

    if-ne p1, v2, :cond_15

    const/16 v0, 0x134

    goto :goto_1

    :cond_15
    const/16 v2, 0x3a

    if-ne p1, v2, :cond_16

    const/16 v0, 0x133

    goto :goto_1

    :cond_16
    const/16 v2, 0x72

    if-ne p1, v2, :cond_17

    const/16 v0, 0x131

    goto :goto_1

    :cond_17
    const/16 v2, 0x71

    if-ne p1, v2, :cond_18

    const/16 v0, 0x132

    goto :goto_1

    :cond_18
    const/16 v2, 0x73

    if-ne p1, v2, :cond_19

    const/16 v0, 0x12d

    goto :goto_1

    :cond_19
    if-ne p1, v1, :cond_1a

    const/16 v0, 0x9

    goto :goto_1

    :cond_1a
    const/16 v1, 0x48

    if-ne p1, v1, :cond_1b

    const/16 v0, 0x5d

    goto :goto_1

    :cond_1b
    const/16 v1, 0x47

    if-ne p1, v1, :cond_1c

    const/16 v0, 0x5b

    goto :goto_1

    :cond_1c
    const/16 v1, 0x4b

    if-ne p1, v1, :cond_1d

    const/16 v0, 0x27

    goto :goto_1

    :cond_1d
    const/16 v1, 0x4a

    if-ne p1, v1, :cond_1e

    goto :goto_1

    :cond_1e
    const/16 v0, 0x49

    if-ne p1, v0, :cond_1f

    const/16 v0, 0x5c

    goto :goto_1

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1

    :cond_20
    :goto_0
    const/16 v0, 0x1b

    :goto_1
    return v0
.end method

.method public IsKeyPressed(I)Z
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->PressedStates:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public SetMouseCursorMode(I)V
    .locals 3

    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unity3d/player/UnityPlayer;->setPointerIcon(Landroid/view/PointerIcon;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne p1, v1, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 197
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unity3d/player/UnityPlayer;->setPointerIcon(Landroid/view/PointerIcon;)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unity3d/player/UnityPlayer;->setPointerIcon(Landroid/view/PointerIcon;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 207
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unity3d/player/UnityPlayer;->setPointerIcon(Landroid/view/PointerIcon;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 174
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1

    .line 180
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 159
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 160
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayerActivity;->requestWindowFeature(I)Z

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "unity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->updateUnityCommandLineArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    new-instance p1, Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p1, p0, p0}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 50
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 51
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 53
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.touchscreen"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unity3d/player/UnityPlayer;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, p0}, Lcom/unity3d/player/UnityPlayer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, p0}, Lcom/unity3d/player/UnityPlayer;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->destroy()V

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 430
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 431
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x411

    .line 432
    invoke-virtual {p1, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 434
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 440
    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, v0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 381
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->GetUnityKeyCode(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->PressedStates:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 387
    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 366
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->GetUnityKeyCode(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 369
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->PressedStates:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 373
    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public onLowMemory()V
    .locals 1

    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 143
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 80
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->setIntent(Landroid/content/Intent;)V

    .line 81
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->newIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 120
    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->saveMultiWindowMode(Landroid/app/Activity;)V

    .line 122
    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->getAllowResizableWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 133
    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->getAllowResizableWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->isMultiWindowModeChangedToTrue(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 109
    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->getAllowResizableWindow(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 99
    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->getAllowResizableWindow(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 398
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 399
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x411

    .line 400
    invoke-virtual {p1, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 402
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, v0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 152
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    :cond_0
    return-void
.end method

.method public onUnityPlayerQuitted()V
    .locals 0

    return-void
.end method

.method public onUnityPlayerUnloaded()V
    .locals 1

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayerActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 167
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    return-void
.end method

.method protected updateUnityCommandLineArguments(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
