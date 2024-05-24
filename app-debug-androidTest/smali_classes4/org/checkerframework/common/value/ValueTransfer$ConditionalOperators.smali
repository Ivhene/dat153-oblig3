.class final enum Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;
.super Ljava/lang/Enum;
.source "ValueTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/value/ValueTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConditionalOperators"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

.field public static final enum AND:Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

.field public static final enum NOT:Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

.field public static final enum OR:Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1492
    new-instance v0, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    const-string v1, "NOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;->NOT:Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    .line 1493
    new-instance v1, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    const-string v2, "OR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;->OR:Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    .line 1494
    new-instance v2, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    const-string v3, "AND"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;->AND:Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    .line 1491
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;->$VALUES:[Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1491
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1491
    const-class v0, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;
    .locals 1

    .line 1491
    sget-object v0, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;->$VALUES:[Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    invoke-virtual {v0}, [Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    return-object v0
.end method
