.class public interface abstract Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;
.super Ljava/lang/Object;
.source "UnicodeEscapeProcessingProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PositionUpdate"
.end annotation


# static fields
.field public static final NONE:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 371
    new-instance v0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate$1;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate$1;-><init>()V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;->NONE:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;

    return-void
.end method


# virtual methods
.method public transform(Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/Position;
    .locals 5
    .param p1, "pos"    # Lorg/checkerframework/com/github/javaparser/Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 402
    iget v0, p1, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    .line 403
    .local v0, "line":I
    iget v1, p1, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    .line 404
    .local v1, "column":I
    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;->transformLine(I)I

    move-result v2

    .line 405
    .local v2, "transformedLine":I
    invoke-interface {p0, v1}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;->transformColumn(I)I

    move-result v3

    .line 406
    .local v3, "transformedColumn":I
    new-instance v4, Lorg/checkerframework/com/github/javaparser/Position;

    invoke-direct {v4, v2, v3}, Lorg/checkerframework/com/github/javaparser/Position;-><init>(II)V

    return-object v4
.end method

.method public abstract transformColumn(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation
.end method

.method public abstract transformLine(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation
.end method
