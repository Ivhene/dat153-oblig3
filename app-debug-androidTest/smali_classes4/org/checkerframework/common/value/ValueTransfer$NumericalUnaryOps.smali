.class final enum Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;
.super Ljava/lang/Enum;
.source "ValueTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/value/ValueTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NumericalUnaryOps"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

.field public static final enum BITWISE_COMPLEMENT:Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

.field public static final enum MINUS:Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

.field public static final enum PLUS:Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1022
    new-instance v0, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    const-string v1, "PLUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->PLUS:Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    .line 1023
    new-instance v1, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    const-string v2, "MINUS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->MINUS:Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    .line 1024
    new-instance v2, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    const-string v3, "BITWISE_COMPLEMENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->BITWISE_COMPLEMENT:Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    .line 1021
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->$VALUES:[Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1021
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1021
    const-class v0, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;
    .locals 1

    .line 1021
    sget-object v0, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->$VALUES:[Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    invoke-virtual {v0}, [Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    return-object v0
.end method