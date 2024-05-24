.class public final enum Lannotator/find/Criterion$Kind;
.super Ljava/lang/Enum;
.source "Criterion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/find/Criterion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lannotator/find/Criterion$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lannotator/find/Criterion$Kind;

.field public static final enum AST_PATH:Lannotator/find/Criterion$Kind;

.field public static final enum BOUND_LOCATION:Lannotator/find/Criterion$Kind;

.field public static final enum CAST:Lannotator/find/Criterion$Kind;

.field public static final enum CLASS:Lannotator/find/Criterion$Kind;

.field public static final enum CLASS_BOUND:Lannotator/find/Criterion$Kind;

.field public static final enum ENCLOSED_BY:Lannotator/find/Criterion$Kind;

.field public static final enum EXTIMPLS_LOCATION:Lannotator/find/Criterion$Kind;

.field public static final enum FIELD:Lannotator/find/Criterion$Kind;

.field public static final enum GENERIC_ARRAY_LOCATION:Lannotator/find/Criterion$Kind;

.field public static final enum HAS_KIND:Lannotator/find/Criterion$Kind;

.field public static final enum INSTANCE_OF:Lannotator/find/Criterion$Kind;

.field public static final enum INTERSECT_LOCATION:Lannotator/find/Criterion$Kind;

.field public static final enum IN_CLASS:Lannotator/find/Criterion$Kind;

.field public static final enum IN_FIELD_INIT:Lannotator/find/Criterion$Kind;

.field public static final enum IN_INSTANCE_INIT:Lannotator/find/Criterion$Kind;

.field public static final enum IN_METHOD:Lannotator/find/Criterion$Kind;

.field public static final enum IN_PACKAGE:Lannotator/find/Criterion$Kind;

.field public static final enum IN_STATIC_INIT:Lannotator/find/Criterion$Kind;

.field public static final enum LAMBDA_EXPRESSION:Lannotator/find/Criterion$Kind;

.field public static final enum LOCAL_VARIABLE:Lannotator/find/Criterion$Kind;

.field public static final enum METHOD_BOUND:Lannotator/find/Criterion$Kind;

.field public static final enum METHOD_CALL:Lannotator/find/Criterion$Kind;

.field public static final enum METHOD_REFERENCE:Lannotator/find/Criterion$Kind;

.field public static final enum NEW:Lannotator/find/Criterion$Kind;

.field public static final enum NOT_IN_METHOD:Lannotator/find/Criterion$Kind;

.field public static final enum PACKAGE:Lannotator/find/Criterion$Kind;

.field public static final enum PARAM:Lannotator/find/Criterion$Kind;

.field public static final enum RECEIVER:Lannotator/find/Criterion$Kind;

.field public static final enum RETURN_TYPE:Lannotator/find/Criterion$Kind;

.field public static final enum SIG_METHOD:Lannotator/find/Criterion$Kind;

.field public static final enum TYPE_ARGUMENT:Lannotator/find/Criterion$Kind;

.field public static final enum TYPE_PARAM:Lannotator/find/Criterion$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 17
    new-instance v1, Lannotator/find/Criterion$Kind;

    move-object v0, v1

    const-string v2, "IN_METHOD"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lannotator/find/Criterion$Kind;->IN_METHOD:Lannotator/find/Criterion$Kind;

    .line 23
    new-instance v2, Lannotator/find/Criterion$Kind;

    move-object v1, v2

    const-string v3, "IN_CLASS"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lannotator/find/Criterion$Kind;->IN_CLASS:Lannotator/find/Criterion$Kind;

    .line 24
    new-instance v3, Lannotator/find/Criterion$Kind;

    move-object v2, v3

    const-string v4, "ENCLOSED_BY"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lannotator/find/Criterion$Kind;->ENCLOSED_BY:Lannotator/find/Criterion$Kind;

    .line 25
    new-instance v4, Lannotator/find/Criterion$Kind;

    move-object v3, v4

    const-string v5, "HAS_KIND"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lannotator/find/Criterion$Kind;->HAS_KIND:Lannotator/find/Criterion$Kind;

    .line 26
    new-instance v5, Lannotator/find/Criterion$Kind;

    move-object v4, v5

    const-string v6, "NOT_IN_METHOD"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lannotator/find/Criterion$Kind;->NOT_IN_METHOD:Lannotator/find/Criterion$Kind;

    .line 27
    new-instance v6, Lannotator/find/Criterion$Kind;

    move-object v5, v6

    const-string v7, "TYPE_PARAM"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lannotator/find/Criterion$Kind;->TYPE_PARAM:Lannotator/find/Criterion$Kind;

    .line 28
    new-instance v7, Lannotator/find/Criterion$Kind;

    move-object v6, v7

    const-string v8, "GENERIC_ARRAY_LOCATION"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lannotator/find/Criterion$Kind;->GENERIC_ARRAY_LOCATION:Lannotator/find/Criterion$Kind;

    .line 29
    new-instance v8, Lannotator/find/Criterion$Kind;

    move-object v7, v8

    const-string v9, "RECEIVER"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lannotator/find/Criterion$Kind;->RECEIVER:Lannotator/find/Criterion$Kind;

    .line 30
    new-instance v9, Lannotator/find/Criterion$Kind;

    move-object v8, v9

    const-string v10, "RETURN_TYPE"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lannotator/find/Criterion$Kind;->RETURN_TYPE:Lannotator/find/Criterion$Kind;

    .line 31
    new-instance v10, Lannotator/find/Criterion$Kind;

    move-object v9, v10

    const-string v11, "SIG_METHOD"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lannotator/find/Criterion$Kind;->SIG_METHOD:Lannotator/find/Criterion$Kind;

    .line 32
    new-instance v11, Lannotator/find/Criterion$Kind;

    move-object v10, v11

    const-string v12, "PARAM"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lannotator/find/Criterion$Kind;->PARAM:Lannotator/find/Criterion$Kind;

    .line 33
    new-instance v12, Lannotator/find/Criterion$Kind;

    move-object v11, v12

    const-string v13, "CAST"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lannotator/find/Criterion$Kind;->CAST:Lannotator/find/Criterion$Kind;

    .line 34
    new-instance v13, Lannotator/find/Criterion$Kind;

    move-object v12, v13

    const-string v14, "LOCAL_VARIABLE"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lannotator/find/Criterion$Kind;->LOCAL_VARIABLE:Lannotator/find/Criterion$Kind;

    .line 35
    new-instance v14, Lannotator/find/Criterion$Kind;

    move-object v13, v14

    const-string v15, "FIELD"

    move-object/from16 v32, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lannotator/find/Criterion$Kind;->FIELD:Lannotator/find/Criterion$Kind;

    .line 36
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object v14, v0

    const-string v15, "NEW"

    move-object/from16 v33, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->NEW:Lannotator/find/Criterion$Kind;

    .line 37
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object v15, v0

    const-string v1, "INSTANCE_OF"

    move-object/from16 v34, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->INSTANCE_OF:Lannotator/find/Criterion$Kind;

    .line 38
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object/from16 v16, v0

    const-string v1, "TYPE_ARGUMENT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->TYPE_ARGUMENT:Lannotator/find/Criterion$Kind;

    .line 39
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object/from16 v17, v0

    const-string v1, "METHOD_CALL"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->METHOD_CALL:Lannotator/find/Criterion$Kind;

    .line 40
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object/from16 v18, v0

    const-string v1, "METHOD_REFERENCE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->METHOD_REFERENCE:Lannotator/find/Criterion$Kind;

    .line 41
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object/from16 v19, v0

    const-string v1, "LAMBDA_EXPRESSION"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->LAMBDA_EXPRESSION:Lannotator/find/Criterion$Kind;

    .line 42
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object/from16 v20, v0

    const-string v1, "BOUND_LOCATION"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->BOUND_LOCATION:Lannotator/find/Criterion$Kind;

    .line 43
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object/from16 v21, v0

    const-string v1, "EXTIMPLS_LOCATION"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->EXTIMPLS_LOCATION:Lannotator/find/Criterion$Kind;

    .line 44
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object/from16 v22, v0

    const-string v1, "INTERSECT_LOCATION"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->INTERSECT_LOCATION:Lannotator/find/Criterion$Kind;

    .line 45
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object/from16 v23, v0

    const-string v1, "METHOD_BOUND"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->METHOD_BOUND:Lannotator/find/Criterion$Kind;

    .line 46
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object/from16 v24, v0

    const-string v1, "CLASS_BOUND"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->CLASS_BOUND:Lannotator/find/Criterion$Kind;

    .line 47
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object/from16 v25, v0

    const-string v1, "IN_PACKAGE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->IN_PACKAGE:Lannotator/find/Criterion$Kind;

    .line 48
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object/from16 v26, v0

    const-string v1, "AST_PATH"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->AST_PATH:Lannotator/find/Criterion$Kind;

    .line 49
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object/from16 v27, v0

    const-string v1, "IN_STATIC_INIT"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->IN_STATIC_INIT:Lannotator/find/Criterion$Kind;

    .line 50
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object/from16 v28, v0

    const-string v1, "IN_INSTANCE_INIT"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->IN_INSTANCE_INIT:Lannotator/find/Criterion$Kind;

    .line 51
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object/from16 v29, v0

    const-string v1, "IN_FIELD_INIT"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->IN_FIELD_INIT:Lannotator/find/Criterion$Kind;

    .line 57
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object/from16 v30, v0

    const-string v1, "CLASS"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->CLASS:Lannotator/find/Criterion$Kind;

    .line 58
    new-instance v0, Lannotator/find/Criterion$Kind;

    move-object/from16 v31, v0

    const-string v1, "PACKAGE"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lannotator/find/Criterion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Criterion$Kind;->PACKAGE:Lannotator/find/Criterion$Kind;

    .line 16
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    filled-new-array/range {v0 .. v31}, [Lannotator/find/Criterion$Kind;

    move-result-object v0

    sput-object v0, Lannotator/find/Criterion$Kind;->$VALUES:[Lannotator/find/Criterion$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lannotator/find/Criterion$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 16
    const-class v0, Lannotator/find/Criterion$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public static values()[Lannotator/find/Criterion$Kind;
    .locals 1

    .line 16
    sget-object v0, Lannotator/find/Criterion$Kind;->$VALUES:[Lannotator/find/Criterion$Kind;

    invoke-virtual {v0}, [Lannotator/find/Criterion$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lannotator/find/Criterion$Kind;

    return-object v0
.end method
