.class public final enum Lorg/checkerframework/dataflow/analysis/Store$FlowRule;
.super Ljava/lang/Enum;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/analysis/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlowRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/dataflow/analysis/Store$FlowRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

.field public static final enum EACH_TO_EACH:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

.field public static final enum ELSE_TO_BOTH:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

.field public static final enum ELSE_TO_ELSE:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

.field public static final enum THEN_TO_BOTH:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

.field public static final enum THEN_TO_THEN:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 28
    new-instance v0, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    const-string v1, "EACH_TO_EACH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->EACH_TO_EACH:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 30
    new-instance v1, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    const-string v2, "THEN_TO_BOTH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->THEN_TO_BOTH:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 31
    new-instance v2, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    const-string v3, "ELSE_TO_BOTH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->ELSE_TO_BOTH:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 32
    new-instance v3, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    const-string v4, "THEN_TO_THEN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->THEN_TO_THEN:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 33
    new-instance v4, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    const-string v5, "ELSE_TO_ELSE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->ELSE_TO_ELSE:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 27
    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->$VALUES:[Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/dataflow/analysis/Store$FlowRule;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/dataflow/analysis/Store$FlowRule;
    .locals 1

    .line 27
    sget-object v0, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->$VALUES:[Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    invoke-virtual {v0}, [Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    return-object v0
.end method
