.class public final enum Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;
.super Ljava/lang/Enum;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/constantpropagation/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

.field public static final enum BOTTOM:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

.field public static final enum CONSTANT:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

.field public static final enum TOP:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    const-string v1, "CONSTANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;->CONSTANT:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    .line 18
    new-instance v1, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    const-string v2, "TOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;->TOP:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    .line 19
    new-instance v2, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    const-string v3, "BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;->BOTTOM:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    .line 16
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;->$VALUES:[Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

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

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 16
    const-class v0, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;
    .locals 1

    .line 16
    sget-object v0, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;->$VALUES:[Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    invoke-virtual {v0}, [Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    return-object v0
.end method
