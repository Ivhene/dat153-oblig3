.class public final Lorg/checkerframework/checker/guieffect/Effect$EffectRange;
.super Ljava/lang/Object;
.source "Effect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/guieffect/Effect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EffectRange"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final max:Lorg/checkerframework/checker/guieffect/Effect;

.field public final min:Lorg/checkerframework/checker/guieffect/Effect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/checkerframework/checker/guieffect/Effect;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/checker/guieffect/Effect;Lorg/checkerframework/checker/guieffect/Effect;)V
    .locals 1
    .param p1, "min"    # Lorg/checkerframework/checker/guieffect/Effect;
    .param p2, "max"    # Lorg/checkerframework/checker/guieffect/Effect;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lorg/checkerframework/checker/guieffect/Effect$EffectRange;->min:Lorg/checkerframework/checker/guieffect/Effect;

    .line 56
    if-eqz p2, :cond_3

    move-object v0, p2

    goto :goto_2

    :cond_3
    move-object v0, p1

    :goto_2
    iput-object v0, p0, Lorg/checkerframework/checker/guieffect/Effect$EffectRange;->max:Lorg/checkerframework/checker/guieffect/Effect;

    .line 57
    return-void
.end method
