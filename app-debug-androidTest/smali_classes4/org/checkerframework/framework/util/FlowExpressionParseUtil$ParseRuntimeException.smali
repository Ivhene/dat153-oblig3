.class Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;
.super Ljava/lang/RuntimeException;
.source "FlowExpressionParseUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/FlowExpressionParseUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseRuntimeException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final exception:Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;


# direct methods
.method private constructor <init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;)V
    .locals 0
    .param p1, "exception"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    .line 1115
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1116
    iput-object p1, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;->exception:Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    .line 1117
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    .param p2, "x1"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;

    .line 1111
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;-><init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;)V

    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;

    .line 1111
    invoke-direct {p0}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;->getCheckedException()Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v0

    return-object v0
.end method

.method private getCheckedException()Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    .locals 1

    .line 1120
    iget-object v0, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;->exception:Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    return-object v0
.end method
