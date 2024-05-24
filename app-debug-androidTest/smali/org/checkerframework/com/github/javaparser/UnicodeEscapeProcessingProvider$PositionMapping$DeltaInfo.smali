.class final Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;
.super Lorg/checkerframework/com/github/javaparser/Position;
.source "UnicodeEscapeProcessingProvider.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeltaInfo"
.end annotation


# instance fields
.field private final _columnDelta:I

.field private final _lineDelta:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "column"    # I
    .param p3, "lineDelta"    # I
    .param p4, "columnDelta"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "line",
            "column",
            "lineDelta",
            "columnDelta"
        }
    .end annotation

    .line 430
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/Position;-><init>(II)V

    .line 431
    iput p3, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;->_lineDelta:I

    .line 432
    iput p4, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;->_columnDelta:I

    .line 433
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;->column:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;->_lineDelta:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;->_columnDelta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transformColumn(I)I
    .locals 1
    .param p1, "sourceColumn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceColumn"
        }
    .end annotation

    .line 442
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;->_columnDelta:I

    add-int/2addr v0, p1

    return v0
.end method

.method public transformLine(I)I
    .locals 1
    .param p1, "sourceLine"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceLine"
        }
    .end annotation

    .line 437
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;->_lineDelta:I

    add-int/2addr v0, p1

    return v0
.end method
