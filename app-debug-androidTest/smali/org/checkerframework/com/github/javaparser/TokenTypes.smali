.class public Lorg/checkerframework/com/github/javaparser/TokenTypes;
.super Ljava/lang/Object;
.source "TokenTypes.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eolTokenKind()I
    .locals 2

    .line 34
    sget-object v0, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x3

    return v0

    .line 37
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const/4 v0, 0x2

    return v0

    .line 40
    :cond_1
    sget-object v0, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    const/4 v0, 0x4

    return v0

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unknown EOL character sequence"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static getCategory(I)Lorg/checkerframework/com/github/javaparser/JavaToken$Category;
    .locals 3
    .param p0, "kind"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    .line 58
    packed-switch p0, :pswitch_data_0

    .line 216
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid token kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 204
    :pswitch_1
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->OPERATOR:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    return-object v0

    .line 163
    :pswitch_2
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->SEPARATOR:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    return-object v0

    .line 152
    :pswitch_3
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->IDENTIFIER:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    return-object v0

    .line 150
    :pswitch_4
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->LITERAL:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    return-object v0

    .line 135
    :pswitch_5
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->KEYWORD:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    return-object v0

    .line 70
    :pswitch_6
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->COMMENT:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    return-object v0

    .line 62
    :pswitch_7
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->EOL:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    return-object v0

    .line 66
    :pswitch_8
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->WHITESPACE_NO_EOL:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method public static isComment(I)Z
    .locals 1
    .param p0, "kind"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    .line 27
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->getCategory(I)Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->isComment()Z

    move-result v0

    return v0
.end method

.method public static isEndOfLineToken(I)Z
    .locals 1
    .param p0, "kind"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    .line 15
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->getCategory(I)Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->isEndOfLine()Z

    move-result v0

    return v0
.end method

.method public static isSpaceOrTab(I)Z
    .locals 1
    .param p0, "kind"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    .line 23
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->getCategory(I)Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->isWhitespaceButNotEndOfLine()Z

    move-result v0

    return v0
.end method

.method public static isWhitespace(I)Z
    .locals 1
    .param p0, "kind"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    .line 11
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->getCategory(I)Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->isWhitespace()Z

    move-result v0

    return v0
.end method

.method public static isWhitespaceOrComment(I)Z
    .locals 1
    .param p0, "kind"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    .line 19
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->getCategory(I)Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->isWhitespaceOrComment()Z

    move-result v0

    return v0
.end method

.method public static spaceTokenKind()I
    .locals 1

    .line 50
    const/4 v0, 0x1

    return v0
.end method
