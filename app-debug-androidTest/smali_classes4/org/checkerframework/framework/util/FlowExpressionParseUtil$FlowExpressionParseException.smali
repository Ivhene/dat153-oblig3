.class public Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
.super Ljava/lang/Exception;
.source "FlowExpressionParseUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/FlowExpressionParseUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlowExpressionParseException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field public final args:[Ljava/lang/Object;

.field private errorKey:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "errorKey"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 1064
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1065
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "errorKey"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 1069
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 1070
    iput-object p2, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;->errorKey:Ljava/lang/String;

    .line 1071
    iput-object p3, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;->args:[Ljava/lang/Object;

    .line 1072
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;->errorKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;->args:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lorg/checkerframework/framework/source/Result;
    .locals 2

    .line 1081
    iget-object v0, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;->errorKey:Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;->args:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v0

    return-object v0
.end method

.method public isFlowParseError()Z
    .locals 2

    .line 1085
    iget-object v0, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;->errorKey:Ljava/lang/String;

    const-string v1, "flowexpr.parse.error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
