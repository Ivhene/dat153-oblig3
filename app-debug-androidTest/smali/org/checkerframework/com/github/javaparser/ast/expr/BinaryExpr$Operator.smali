.class public final enum Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;
.super Ljava/lang/Enum;
.source "BinaryExpr.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/Printable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/printer/Printable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum AND:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum BINARY_AND:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum BINARY_OR:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum DIVIDE:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum EQUALS:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum GREATER:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum GREATER_EQUALS:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum LEFT_SHIFT:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum LESS:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum LESS_EQUALS:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum MINUS:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum MULTIPLY:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum NOT_EQUALS:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum OR:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum PLUS:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum REMAINDER:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum SIGNED_RIGHT_SHIFT:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum UNSIGNED_RIGHT_SHIFT:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field public static final enum XOR:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;


# instance fields
.field private final codeRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 50
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object v0, v1

    const/4 v2, 0x0

    const-string v3, "||"

    const-string v4, "OR"

    invoke-direct {v1, v4, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->OR:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 51
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "&&"

    const-string v5, "AND"

    invoke-direct {v2, v5, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->AND:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 52
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "|"

    const-string v6, "BINARY_OR"

    invoke-direct {v3, v6, v4, v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->BINARY_OR:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 53
    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "&"

    const-string v7, "BINARY_AND"

    invoke-direct {v4, v7, v5, v6}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->BINARY_AND:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 54
    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "^"

    const-string v8, "XOR"

    invoke-direct {v5, v8, v6, v7}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->XOR:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 55
    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "=="

    const-string v9, "EQUALS"

    invoke-direct {v6, v9, v7, v8}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->EQUALS:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 56
    new-instance v7, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "!="

    const-string v10, "NOT_EQUALS"

    invoke-direct {v7, v10, v8, v9}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->NOT_EQUALS:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 57
    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object v7, v8

    const/4 v9, 0x7

    const-string v10, "<"

    const-string v11, "LESS"

    invoke-direct {v8, v11, v9, v10}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->LESS:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 58
    new-instance v9, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object v8, v9

    const/16 v10, 0x8

    const-string v11, ">"

    const-string v12, "GREATER"

    invoke-direct {v9, v12, v10, v11}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->GREATER:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 59
    new-instance v10, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object v9, v10

    const/16 v11, 0x9

    const-string v12, "<="

    const-string v13, "LESS_EQUALS"

    invoke-direct {v10, v13, v11, v12}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->LESS_EQUALS:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 60
    new-instance v11, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, ">="

    const-string v14, "GREATER_EQUALS"

    invoke-direct {v11, v14, v12, v13}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->GREATER_EQUALS:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 61
    new-instance v12, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object v11, v12

    const/16 v13, 0xb

    const-string v14, "<<"

    const-string v15, "LEFT_SHIFT"

    invoke-direct {v12, v15, v13, v14}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->LEFT_SHIFT:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 62
    new-instance v13, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object v12, v13

    const/16 v14, 0xc

    const-string v15, ">>"

    move-object/from16 v19, v0

    const-string v0, "SIGNED_RIGHT_SHIFT"

    invoke-direct {v13, v0, v14, v15}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->SIGNED_RIGHT_SHIFT:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 63
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object v13, v0

    const/16 v14, 0xd

    const-string v15, ">>>"

    move-object/from16 v20, v1

    const-string v1, "UNSIGNED_RIGHT_SHIFT"

    invoke-direct {v0, v1, v14, v15}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->UNSIGNED_RIGHT_SHIFT:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 64
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object v14, v0

    const/16 v1, 0xe

    const-string v15, "+"

    move-object/from16 v21, v2

    const-string v2, "PLUS"

    invoke-direct {v0, v2, v1, v15}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->PLUS:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 65
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object v15, v0

    const/16 v1, 0xf

    const-string v2, "-"

    move-object/from16 v22, v3

    const-string v3, "MINUS"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->MINUS:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 66
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "*"

    const-string v3, "MULTIPLY"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->MULTIPLY:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 67
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v2, "/"

    const-string v3, "DIVIDE"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->DIVIDE:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 68
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const-string v2, "%"

    const-string v3, "REMAINDER"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->REMAINDER:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 48
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    filled-new-array/range {v0 .. v18}, [Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

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

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->codeRepresentation:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;
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

    .line 48
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;
    .locals 1

    .line 48
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    invoke-virtual {v0}, [Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    return-object v0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->codeRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public toAssignOperator()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;",
            ">;"
        }
    .end annotation

    .line 81
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$1;->$SwitchMap$com$github$javaparser$ast$expr$BinaryExpr$Operator:[I

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 103
    :pswitch_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;->REMAINDER:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 101
    :pswitch_1
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;->DIVIDE:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 99
    :pswitch_2
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;->MULTIPLY:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 97
    :pswitch_3
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;->MINUS:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 95
    :pswitch_4
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;->PLUS:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 93
    :pswitch_5
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;->UNSIGNED_RIGHT_SHIFT:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 91
    :pswitch_6
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;->SIGNED_RIGHT_SHIFT:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 89
    :pswitch_7
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;->LEFT_SHIFT:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 87
    :pswitch_8
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;->XOR:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 85
    :pswitch_9
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;->BINARY_AND:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 83
    :pswitch_a
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;->BINARY_OR:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
