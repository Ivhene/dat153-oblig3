.class public final Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;
.super Ljava/lang/Object;
.source "UnicodeEscapeProcessingProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LineCounter"
.end annotation


# instance fields
.field private _column:I

.field private _crSeen:Z

.field private _line:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    const/4 v0, 0x1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_line:I

    .line 532
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_column:I

    .line 539
    return-void
.end method

.method private incLine()V
    .locals 2

    .line 593
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_line:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_line:I

    .line 594
    iput v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_column:I

    .line 595
    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 552
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_column:I

    return v0
.end method

.method public getLine()I
    .locals 1

    .line 545
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_line:I

    return v0
.end method

.method public getPosition()Lorg/checkerframework/com/github/javaparser/Position;
    .locals 3

    .line 559
    new-instance v0, Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->getLine()I

    move-result v1

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->getColumn()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/Position;-><init>(II)V

    return-object v0
.end method

.method public process(I)I
    .locals 2
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ch"
        }
    .end annotation

    .line 566
    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 585
    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_crSeen:Z

    .line 586
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_column:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_column:I

    goto :goto_0

    .line 571
    :sswitch_0
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->incLine()V

    .line 572
    iput-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_crSeen:Z

    .line 573
    goto :goto_0

    .line 577
    :sswitch_1
    iget-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_crSeen:Z

    if-eqz v1, :cond_0

    .line 578
    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_crSeen:Z

    goto :goto_0

    .line 580
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->incLine()V

    .line 582
    goto :goto_0

    .line 568
    :sswitch_2
    nop

    .line 589
    :goto_0
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0xa -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method
