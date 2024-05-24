.class final enum Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;
.super Ljava/lang/Enum;
.source "ValueTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/value/ValueTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NumericalBinaryOps"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

.field public static final enum ADDITION:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

.field public static final enum BITWISE_AND:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

.field public static final enum BITWISE_OR:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

.field public static final enum BITWISE_XOR:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

.field public static final enum DIVISION:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

.field public static final enum MULTIPLICATION:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

.field public static final enum REMAINDER:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

.field public static final enum SHIFT_LEFT:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

.field public static final enum SIGNED_SHIFT_RIGHT:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

.field public static final enum SUBTRACTION:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

.field public static final enum UNSIGNED_SHIFT_RIGHT:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 722
    new-instance v0, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    const-string v1, "ADDITION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->ADDITION:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 723
    new-instance v1, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    const-string v2, "SUBTRACTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->SUBTRACTION:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 724
    new-instance v2, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    const-string v3, "DIVISION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->DIVISION:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 725
    new-instance v3, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    const-string v4, "REMAINDER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->REMAINDER:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 726
    new-instance v4, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    const-string v5, "MULTIPLICATION"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->MULTIPLICATION:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 727
    new-instance v5, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    const-string v6, "SHIFT_LEFT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->SHIFT_LEFT:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 728
    new-instance v6, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    const-string v7, "SIGNED_SHIFT_RIGHT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->SIGNED_SHIFT_RIGHT:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 729
    new-instance v7, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    const-string v8, "UNSIGNED_SHIFT_RIGHT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->UNSIGNED_SHIFT_RIGHT:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 730
    new-instance v8, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    const-string v9, "BITWISE_AND"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->BITWISE_AND:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 731
    new-instance v9, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    const-string v10, "BITWISE_OR"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->BITWISE_OR:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 732
    new-instance v10, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    const-string v11, "BITWISE_XOR"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->BITWISE_XOR:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 721
    filled-new-array/range {v0 .. v10}, [Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->$VALUES:[Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 721
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 721
    const-class v0, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;
    .locals 1

    .line 721
    sget-object v0, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->$VALUES:[Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    invoke-virtual {v0}, [Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    return-object v0
.end method
