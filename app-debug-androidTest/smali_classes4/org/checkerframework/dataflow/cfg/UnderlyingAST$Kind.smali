.class public final enum Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;
.super Ljava/lang/Enum;
.source "UnderlyingAST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

.field public static final enum ARBITRARY_CODE:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

.field public static final enum LAMBDA:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

.field public static final enum METHOD:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    const-string v1, "METHOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->METHOD:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    .line 17
    new-instance v1, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    const-string v2, "LAMBDA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->LAMBDA:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    .line 20
    new-instance v2, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    const-string v3, "ARBITRARY_CODE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->ARBITRARY_CODE:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    .line 13
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->$VALUES:[Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;
    .locals 1

    .line 13
    sget-object v0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->$VALUES:[Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    invoke-virtual {v0}, [Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    return-object v0
.end method
