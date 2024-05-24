.class public final enum Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;
.super Ljava/lang/Enum;
.source "UnaryExpr.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/Printable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/printer/Printable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

.field public static final enum BITWISE_COMPLEMENT:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

.field public static final enum LOGICAL_COMPLEMENT:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

.field public static final enum MINUS:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

.field public static final enum PLUS:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

.field public static final enum POSTFIX_DECREMENT:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

.field public static final enum POSTFIX_INCREMENT:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

.field public static final enum PREFIX_DECREMENT:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

.field public static final enum PREFIX_INCREMENT:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;


# instance fields
.field private final codeRepresentation:Ljava/lang/String;

.field private final isPostfix:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 54
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    const-string v1, "+"

    const-string v2, "PLUS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->PLUS:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    .line 55
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    const-string v2, "-"

    const-string v4, "MINUS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->MINUS:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    .line 56
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    const-string v4, "PREFIX_INCREMENT"

    const/4 v6, 0x2

    const-string v7, "++"

    invoke-direct {v2, v4, v6, v7, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->PREFIX_INCREMENT:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    .line 57
    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    const-string v6, "PREFIX_DECREMENT"

    const/4 v8, 0x3

    const-string v9, "--"

    invoke-direct {v4, v6, v8, v9, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->PREFIX_DECREMENT:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    .line 58
    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    const/4 v8, 0x4

    const-string v10, "!"

    const-string v11, "LOGICAL_COMPLEMENT"

    invoke-direct {v6, v11, v8, v10, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->LOGICAL_COMPLEMENT:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    .line 59
    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    const/4 v10, 0x5

    const-string v11, "~"

    const-string v12, "BITWISE_COMPLEMENT"

    invoke-direct {v8, v12, v10, v11, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v8, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->BITWISE_COMPLEMENT:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    .line 60
    new-instance v10, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    const-string v3, "POSTFIX_INCREMENT"

    const/4 v11, 0x6

    invoke-direct {v10, v3, v11, v7, v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v10, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->POSTFIX_INCREMENT:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    .line 61
    new-instance v7, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    const-string v3, "POSTFIX_DECREMENT"

    const/4 v11, 0x7

    invoke-direct {v7, v3, v11, v9, v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v7, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->POSTFIX_DECREMENT:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    .line 52
    move-object v3, v4

    move-object v4, v6

    move-object v5, v8

    move-object v6, v10

    filled-new-array/range {v0 .. v7}, [Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p3, "codeRepresentation"    # Ljava/lang/String;
    .param p4, "isPostfix"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "codeRepresentation",
            "isPostfix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->codeRepresentation:Ljava/lang/String;

    .line 69
    iput-boolean p4, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->isPostfix:Z

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;
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

    .line 52
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;
    .locals 1

    .line 52
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    invoke-virtual {v0}, [Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    return-object v0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->codeRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public isPostfix()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->isPostfix:Z

    return v0
.end method

.method public isPrefix()Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->isPostfix()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
