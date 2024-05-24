.class public Lorg/checkerframework/com/github/javaparser/Token;
.super Lorg/checkerframework/com/github/javaparser/TokenBase;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public endColumn:I

.field public endLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lorg/checkerframework/com/github/javaparser/Token;

.field public specialToken:Lorg/checkerframework/com/github/javaparser/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/TokenBase;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/Token;-><init>(ILjava/lang/String;)V

    .line 106
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "kind"    # I
    .param p2, "image"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kind",
            "image"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/TokenBase;-><init>()V

    .line 113
    iput p1, p0, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    .line 114
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/Token;->image:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public static newToken(I)Lorg/checkerframework/com/github/javaparser/Token;
    .locals 1
    .param p0, "ofKind"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ofKind"
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/com/github/javaparser/Token;->newToken(ILjava/lang/String;)Lorg/checkerframework/com/github/javaparser/Token;

    move-result-object v0

    return-object v0
.end method

.method public static newToken(ILjava/lang/String;)Lorg/checkerframework/com/github/javaparser/Token;
    .locals 1
    .param p0, "ofKind"    # I
    .param p1, "image"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ofKind",
            "image"
        }
    .end annotation

    .line 140
    nop

    .line 142
    new-instance v0, Lorg/checkerframework/com/github/javaparser/Token;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/Token;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Token;->image:Ljava/lang/String;

    return-object v0
.end method
