.class final Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate$1;
.super Ljava/lang/Object;
.source "UnicodeEscapeProcessingProvider.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/Position;
    .locals 0
    .param p1, "pos"    # Lorg/checkerframework/com/github/javaparser/Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 384
    return-object p1
.end method

.method public transformColumn(I)I
    .locals 0
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation

    .line 379
    return p1
.end method

.method public transformLine(I)I
    .locals 0
    .param p1, "line"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    .line 374
    return p1
.end method
