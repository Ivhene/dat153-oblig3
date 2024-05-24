.class final enum Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;
.super Ljava/lang/Enum;
.source "ValueTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/value/ValueTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ComparisonOperators"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

.field public static final enum EQUAL:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

.field public static final enum GREATER_THAN:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

.field public static final enum GREATER_THAN_EQ:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

.field public static final enum LESS_THAN:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

.field public static final enum LESS_THAN_EQ:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

.field public static final enum NOT_EQUAL:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1130
    new-instance v0, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    const-string v1, "EQUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->EQUAL:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    .line 1131
    new-instance v1, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    const-string v2, "NOT_EQUAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->NOT_EQUAL:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    .line 1132
    new-instance v2, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    const-string v3, "GREATER_THAN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->GREATER_THAN:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    .line 1133
    new-instance v3, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    const-string v4, "GREATER_THAN_EQ"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->GREATER_THAN_EQ:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    .line 1134
    new-instance v4, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    const-string v5, "LESS_THAN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->LESS_THAN:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    .line 1135
    new-instance v5, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    const-string v6, "LESS_THAN_EQ"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->LESS_THAN_EQ:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    .line 1129
    filled-new-array/range {v0 .. v5}, [Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->$VALUES:[Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1129
    const-class v0, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;
    .locals 1

    .line 1129
    sget-object v0, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->$VALUES:[Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    invoke-virtual {v0}, [Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    return-object v0
.end method
