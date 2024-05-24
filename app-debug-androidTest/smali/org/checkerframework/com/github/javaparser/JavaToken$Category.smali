.class public final enum Lorg/checkerframework/com/github/javaparser/JavaToken$Category;
.super Ljava/lang/Enum;
.source "JavaToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/JavaToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/github/javaparser/JavaToken$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

.field public static final enum COMMENT:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

.field public static final enum EOL:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

.field public static final enum IDENTIFIER:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

.field public static final enum KEYWORD:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

.field public static final enum LITERAL:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

.field public static final enum OPERATOR:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

.field public static final enum SEPARATOR:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

.field public static final enum WHITESPACE_NO_EOL:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 198
    new-instance v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    const-string v1, "WHITESPACE_NO_EOL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->WHITESPACE_NO_EOL:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    .line 199
    new-instance v1, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    const-string v2, "EOL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->EOL:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    .line 200
    new-instance v2, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    const-string v3, "COMMENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->COMMENT:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    .line 201
    new-instance v3, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    const-string v4, "IDENTIFIER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->IDENTIFIER:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    .line 202
    new-instance v4, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    const-string v5, "KEYWORD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->KEYWORD:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    .line 203
    new-instance v5, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    const-string v6, "LITERAL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->LITERAL:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    .line 204
    new-instance v6, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    const-string v7, "SEPARATOR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->SEPARATOR:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    .line 205
    new-instance v7, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    const-string v8, "OPERATOR"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->OPERATOR:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    .line 196
    filled-new-array/range {v0 .. v7}, [Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->$VALUES:[Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/JavaToken$Category;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 196
    const-class v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/github/javaparser/JavaToken$Category;
    .locals 1

    .line 196
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->$VALUES:[Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    invoke-virtual {v0}, [Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    return-object v0
.end method


# virtual methods
.method public isComment()Z
    .locals 1

    .line 220
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->COMMENT:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEndOfLine()Z
    .locals 1

    .line 216
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->EOL:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIdentifier()Z
    .locals 1

    .line 228
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->IDENTIFIER:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isKeyword()Z
    .locals 1

    .line 232
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->KEYWORD:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLiteral()Z
    .locals 1

    .line 236
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->LITERAL:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOperator()Z
    .locals 1

    .line 244
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->OPERATOR:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSeparator()Z
    .locals 1

    .line 240
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->SEPARATOR:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWhitespace()Z
    .locals 1

    .line 212
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->WHITESPACE_NO_EOL:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->EOL:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isWhitespaceButNotEndOfLine()Z
    .locals 1

    .line 224
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->WHITESPACE_NO_EOL:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWhitespaceOrComment()Z
    .locals 1

    .line 208
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->isWhitespace()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->COMMENT:Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
