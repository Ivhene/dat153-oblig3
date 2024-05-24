.class public Lorg/checkerframework/com/github/javaparser/ParseException;
.super Ljava/lang/Exception;
.source "ParseException.java"


# static fields
.field protected static EOL:Ljava/lang/String; = null

.field private static final INDENT:Ljava/lang/String; = "    "

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public currentToken:Lorg/checkerframework/com/github/javaparser/Token;

.field public expectedTokenSequences:[[I

.field public tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-string v0, "\n"

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ParseException;->EOL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/Token;[[I[Ljava/lang/String;)V
    .locals 1
    .param p1, "currentTokenVal"    # Lorg/checkerframework/com/github/javaparser/Token;
    .param p2, "expectedTokenSequencesVal"    # [[I
    .param p3, "tokenImageVal"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentTokenVal",
            "expectedTokenSequencesVal",
            "tokenImageVal"
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/checkerframework/com/github/javaparser/ParseException;-><init>(Lorg/checkerframework/com/github/javaparser/Token;[[I[Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/Token;[[I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "currentTokenVal"    # Lorg/checkerframework/com/github/javaparser/Token;
    .param p2, "expectedTokenSequencesVal"    # [[I
    .param p3, "tokenImageVal"    # [Ljava/lang/String;
    .param p4, "lexicalStateName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentTokenVal",
            "expectedTokenSequencesVal",
            "tokenImageVal",
            "lexicalStateName"
        }
    .end annotation

    .line 72
    invoke-static {p1, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/ParseException;->initialise(Lorg/checkerframework/com/github/javaparser/Token;[[I[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ParseException;->currentToken:Lorg/checkerframework/com/github/javaparser/Token;

    .line 74
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ParseException;->expectedTokenSequences:[[I

    .line 75
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/ParseException;->tokenImage:[Ljava/lang/String;

    .line 76
    return-void
.end method

.method static add_escapes(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 194
    .local v0, "retval":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 195
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 222
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v3, v2

    .local v3, "ch":C
    const/16 v4, 0x20

    if-lt v2, v4, :cond_1

    const/16 v2, 0x7e

    if-le v3, v2, :cond_0

    goto :goto_1

    .line 219
    .end local v3    # "ch":C
    :sswitch_0
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    goto :goto_2

    .line 216
    :sswitch_1
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    goto :goto_2

    .line 213
    :sswitch_2
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    goto :goto_2

    .line 210
    :sswitch_3
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    goto :goto_2

    .line 207
    :sswitch_4
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    goto :goto_2

    .line 204
    :sswitch_5
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    goto :goto_2

    .line 201
    :sswitch_6
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    goto :goto_2

    .line 198
    :sswitch_7
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    goto :goto_2

    .line 226
    .restart local v3    # "ch":C
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 223
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0000"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    .end local v2    # "s":Ljava/lang/String;
    nop

    .line 194
    .end local v3    # "ch":C
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 231
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_7
        0x9 -> :sswitch_6
        0xa -> :sswitch_5
        0xc -> :sswitch_4
        0xd -> :sswitch_3
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private static initialise(Lorg/checkerframework/com/github/javaparser/Token;[[I[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "currentToken"    # Lorg/checkerframework/com/github/javaparser/Token;
    .param p1, "expectedTokenSequences"    # [[I
    .param p2, "tokenImage"    # [Ljava/lang/String;
    .param p3, "lexicalStateName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentToken",
            "expectedTokenSequences",
            "tokenImage",
            "lexicalStateName"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    .local v1, "expected":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 134
    .local v2, "maxSize":I
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 135
    .local v3, "sortedOptions":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 136
    aget-object v5, p1, v4

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 137
    aget-object v5, p1, v4

    array-length v2, v5

    .line 139
    :cond_0
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    aget-object v6, p1, v4

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 140
    aget-object v6, p1, v4

    aget v6, v6, v5

    aget-object v6, p2, v6

    invoke-virtual {v3, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 135
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 144
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "    "

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 145
    .local v5, "option":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Lorg/checkerframework/com/github/javaparser/ParseException;->EOL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    .end local v5    # "option":Ljava/lang/String;
    goto :goto_2

    .line 148
    :cond_3
    const-string v4, "Encountered unexpected token:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/Token;->next:Lorg/checkerframework/com/github/javaparser/Token;

    .line 151
    .local v4, "tok":Lorg/checkerframework/com/github/javaparser/Token;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v2, :cond_6

    .line 152
    iget-object v7, v4, Lorg/checkerframework/com/github/javaparser/Token;->image:Ljava/lang/String;

    .line 153
    .local v7, "tokenText":Ljava/lang/String;
    invoke-static {v7}, Lorg/checkerframework/com/github/javaparser/ParseException;->add_escapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, "escapedTokenText":Ljava/lang/String;
    const-string v9, " "

    if-eqz v5, :cond_4

    .line 155
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_4
    iget v10, v4, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    if-nez v10, :cond_5

    .line 158
    const/4 v9, 0x0

    aget-object v9, p2, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    goto :goto_4

    .line 161
    :cond_5
    const-string v10, " \""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v10, "\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v4, v4, Lorg/checkerframework/com/github/javaparser/Token;->next:Lorg/checkerframework/com/github/javaparser/Token;

    .line 151
    .end local v7    # "tokenText":Ljava/lang/String;
    .end local v8    # "escapedTokenText":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 167
    .end local v5    # "i":I
    :cond_6
    :goto_4
    sget-object v5, Lorg/checkerframework/com/github/javaparser/ParseException;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/checkerframework/com/github/javaparser/Token;->next:Lorg/checkerframework/com/github/javaparser/Token;

    iget v7, v7, Lorg/checkerframework/com/github/javaparser/Token;->beginLine:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/checkerframework/com/github/javaparser/Token;->next:Lorg/checkerframework/com/github/javaparser/Token;

    iget v7, v7, Lorg/checkerframework/com/github/javaparser/Token;->beginColumn:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/checkerframework/com/github/javaparser/ParseException;->EOL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    array-length v5, p1

    if-nez v5, :cond_7

    goto :goto_6

    .line 173
    :cond_7
    array-length v5, p1

    .line 174
    .local v5, "numExpectedTokens":I
    sget-object v6, Lorg/checkerframework/com/github/javaparser/ParseException;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Was expecting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    if-ne v5, v8, :cond_8

    const-string v8, ":"

    goto :goto_5

    :cond_8
    const-string v8, " one of:"

    :goto_5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ParseException;->EOL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ParseException;->EOL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .end local v5    # "numExpectedTokens":I
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
