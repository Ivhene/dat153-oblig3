.class public final enum Lorg/checkerframework/dataflow/analysis/Store$Kind;
.super Ljava/lang/Enum;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/analysis/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/dataflow/analysis/Store$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/dataflow/analysis/Store$Kind;

.field public static final enum BOTH:Lorg/checkerframework/dataflow/analysis/Store$Kind;

.field public static final enum ELSE:Lorg/checkerframework/dataflow/analysis/Store$Kind;

.field public static final enum THEN:Lorg/checkerframework/dataflow/analysis/Store$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lorg/checkerframework/dataflow/analysis/Store$Kind;

    const-string v1, "THEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/dataflow/analysis/Store$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/dataflow/analysis/Store$Kind;->THEN:Lorg/checkerframework/dataflow/analysis/Store$Kind;

    .line 22
    new-instance v1, Lorg/checkerframework/dataflow/analysis/Store$Kind;

    const-string v2, "ELSE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/dataflow/analysis/Store$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/dataflow/analysis/Store$Kind;->ELSE:Lorg/checkerframework/dataflow/analysis/Store$Kind;

    .line 23
    new-instance v2, Lorg/checkerframework/dataflow/analysis/Store$Kind;

    const-string v3, "BOTH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/dataflow/analysis/Store$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/dataflow/analysis/Store$Kind;->BOTH:Lorg/checkerframework/dataflow/analysis/Store$Kind;

    .line 20
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/dataflow/analysis/Store$Kind;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/dataflow/analysis/Store$Kind;->$VALUES:[Lorg/checkerframework/dataflow/analysis/Store$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/dataflow/analysis/Store$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lorg/checkerframework/dataflow/analysis/Store$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/Store$Kind;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/dataflow/analysis/Store$Kind;
    .locals 1

    .line 20
    sget-object v0, Lorg/checkerframework/dataflow/analysis/Store$Kind;->$VALUES:[Lorg/checkerframework/dataflow/analysis/Store$Kind;

    invoke-virtual {v0}, [Lorg/checkerframework/dataflow/analysis/Store$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/dataflow/analysis/Store$Kind;

    return-object v0
.end method
