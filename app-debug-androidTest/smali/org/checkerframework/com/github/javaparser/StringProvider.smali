.class public Lorg/checkerframework/com/github/javaparser/StringProvider;
.super Ljava/lang/Object;
.source "StringProvider.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/Provider;


# instance fields
.field _position:I

.field _size:I

.field _string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/StringProvider;->_position:I

    .line 35
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/StringProvider;->_string:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/StringProvider;->_size:I

    .line 37
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/StringProvider;->_string:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public read([CII)I
    .locals 6
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cbuf",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/StringProvider;->_size:I

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/StringProvider;->_position:I

    sub-int/2addr v0, v1

    .line 43
    .local v0, "numCharsOutstandingInString":I
    if-nez v0, :cond_0

    .line 44
    const/4 v1, -0x1

    return v1

    .line 47
    :cond_0
    array-length v2, p1

    .line 48
    .local v2, "numBytesInBuffer":I
    sub-int v3, v2, p2

    .line 49
    .local v3, "numBytesToRead":I
    if-le v3, p3, :cond_1

    move v4, p3

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    move v3, v4

    .line 51
    if-le v3, v0, :cond_2

    .line 52
    move v3, v0

    .line 55
    :cond_2
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/StringProvider;->_string:Ljava/lang/String;

    add-int v5, v1, v3

    invoke-virtual {v4, v1, v5, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 57
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/StringProvider;->_position:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/checkerframework/com/github/javaparser/StringProvider;->_position:I

    .line 59
    return v3
.end method
