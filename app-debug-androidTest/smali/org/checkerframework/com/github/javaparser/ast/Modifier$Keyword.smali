.class public final enum Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
.super Ljava/lang/Enum;
.source "Modifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ast/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Keyword"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

.field public static final enum ABSTRACT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

.field public static final enum DEFAULT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

.field public static final enum FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

.field public static final enum NATIVE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

.field public static final enum PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

.field public static final enum PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

.field public static final enum PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

.field public static final enum STATIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

.field public static final enum STRICTFP:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

.field public static final enum SYNCHRONIZED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

.field public static final enum TRANSIENT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

.field public static final enum TRANSITIVE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

.field public static final enum VOLATILE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;


# instance fields
.field private final codeRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 94
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    const-string v2, "default"

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->DEFAULT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 95
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v2, 0x1

    const-string v3, "public"

    const-string v4, "PUBLIC"

    invoke-direct {v1, v4, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 96
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v3, 0x2

    const-string v4, "protected"

    const-string v5, "PROTECTED"

    invoke-direct {v2, v5, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 97
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v4, 0x3

    const-string v5, "private"

    const-string v6, "PRIVATE"

    invoke-direct {v3, v6, v4, v5}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 98
    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v5, 0x4

    const-string v6, "abstract"

    const-string v7, "ABSTRACT"

    invoke-direct {v4, v7, v5, v6}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 99
    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v6, 0x5

    const-string v7, "static"

    const-string v8, "STATIC"

    invoke-direct {v5, v8, v6, v7}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STATIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 100
    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v7, 0x6

    const-string v8, "final"

    const-string v9, "FINAL"

    invoke-direct {v6, v9, v7, v8}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 101
    new-instance v7, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v8, 0x7

    const-string v9, "transient"

    const-string v10, "TRANSIENT"

    invoke-direct {v7, v10, v8, v9}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->TRANSIENT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 102
    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/16 v9, 0x8

    const-string v10, "volatile"

    const-string v11, "VOLATILE"

    invoke-direct {v8, v11, v9, v10}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->VOLATILE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 103
    new-instance v9, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/16 v10, 0x9

    const-string v11, "synchronized"

    const-string v12, "SYNCHRONIZED"

    invoke-direct {v9, v12, v10, v11}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->SYNCHRONIZED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 104
    new-instance v10, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/16 v11, 0xa

    const-string v12, "native"

    const-string v13, "NATIVE"

    invoke-direct {v10, v13, v11, v12}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 105
    new-instance v11, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/16 v12, 0xb

    const-string v13, "strictfp"

    const-string v14, "STRICTFP"

    invoke-direct {v11, v14, v12, v13}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 106
    new-instance v12, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/16 v13, 0xc

    const-string v14, "transitive"

    const-string v15, "TRANSITIVE"

    invoke-direct {v12, v15, v13, v14}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->TRANSITIVE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 92
    filled-new-array/range {v0 .. v12}, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "codeRepresentation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "codeRepresentation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->codeRepresentation:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
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

    .line 92
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .locals 1

    .line 92
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {v0}, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    return-object v0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->codeRepresentation:Ljava/lang/String;

    return-object v0
.end method
