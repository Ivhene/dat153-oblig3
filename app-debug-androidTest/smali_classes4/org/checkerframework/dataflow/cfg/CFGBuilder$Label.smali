.class public Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
.super Ljava/lang/Object;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Label"
.end annotation


# static fields
.field private static uid:I


# instance fields
.field protected final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 493
    const/4 v0, 0x0

    sput v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;->uid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    invoke-static {}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;->uniqueName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;->name:Ljava/lang/String;

    .line 503
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;->name:Ljava/lang/String;

    .line 499
    return-void
.end method

.method private static uniqueName()Ljava/lang/String;
    .locals 3

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;->uid:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 507
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;->name:Ljava/lang/String;

    return-object v0
.end method
