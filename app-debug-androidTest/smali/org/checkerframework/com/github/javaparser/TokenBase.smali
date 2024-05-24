.class abstract Lorg/checkerframework/com/github/javaparser/TokenBase;
.super Ljava/lang/Object;
.source "TokenBase.java"


# instance fields
.field javaToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

.field realKind:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x91

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/TokenBase;->realKind:I

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/TokenBase;->javaToken:Lorg/checkerframework/com/github/javaparser/JavaToken;

    return-void
.end method
