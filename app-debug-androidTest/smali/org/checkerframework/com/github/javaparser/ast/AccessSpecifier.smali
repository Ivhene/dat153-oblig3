.class public final enum Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;
.super Ljava/lang/Enum;
.source "AccessSpecifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

.field public static final enum PACKAGE_PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

.field public static final enum PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

.field public static final enum PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

.field public static final enum PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;


# instance fields
.field private codeRepresenation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    const/4 v1, 0x0

    const-string v2, "public"

    const-string v3, "PUBLIC"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    .line 34
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    const/4 v2, 0x1

    const-string v3, "private"

    const-string v4, "PRIVATE"

    invoke-direct {v1, v4, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    .line 35
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    const/4 v3, 0x2

    const-string v4, "protected"

    const-string v5, "PROTECTED"

    invoke-direct {v2, v5, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    .line 36
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    const/4 v4, 0x3

    const-string v5, ""

    const-string v6, "PACKAGE_PRIVATE"

    invoke-direct {v3, v6, v4, v5}, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;->PACKAGE_PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    .line 31
    filled-new-array {v0, v1, v2, v3}, [Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;->codeRepresenation:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;
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

    .line 31
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;
    .locals 1

    .line 31
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    invoke-virtual {v0}, [Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    return-object v0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;->codeRepresenation:Ljava/lang/String;

    return-object v0
.end method
