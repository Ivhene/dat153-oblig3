.class final Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;
.super Ljava/lang/Object;
.source "UnicodeEscapeProcessingProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PositionMappingBuilder"
.end annotation


# instance fields
.field private _columnDelta:I

.field private _left:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

.field private _lineDelta:I

.field private final _mapping:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;

.field private _right:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;)V
    .locals 1
    .param p1, "left"    # Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;
    .param p2, "right"    # Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_mapping:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;

    .line 481
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_lineDelta:I

    .line 482
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_columnDelta:I

    .line 491
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_left:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    .line 492
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_right:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    .line 493
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->update()V

    .line 494
    return-void
.end method


# virtual methods
.method public getMapping()Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;
    .locals 1

    .line 500
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_mapping:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;

    return-object v0
.end method

.method public update()V
    .locals 5

    .line 504
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_right:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->getLine()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_left:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->getLine()I

    move-result v1

    sub-int/2addr v0, v1

    .line 505
    .local v0, "lineDelta":I
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_right:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->getColumn()I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_left:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->getColumn()I

    move-result v2

    sub-int/2addr v1, v2

    .line 507
    .local v1, "columnDelta":I
    iget v2, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_lineDelta:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_columnDelta:I

    if-eq v1, v2, :cond_1

    .line 508
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_mapping:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_left:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->getLine()I

    move-result v3

    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_left:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->getColumn()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->add(IIII)V

    .line 510
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_lineDelta:I

    .line 511
    iput v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_columnDelta:I

    .line 513
    :cond_1
    return-void
.end method
