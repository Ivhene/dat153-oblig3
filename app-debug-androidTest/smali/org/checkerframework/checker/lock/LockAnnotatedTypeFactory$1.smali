.class Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$1;
.super Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
.source "LockAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->createDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;


# direct methods
.method constructor <init>(Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;
    .param p2, "arg0"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 151
    iput-object p1, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$1;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-void
.end method


# virtual methods
.method protected reportErrors(Lcom/sun/source/tree/Tree;Ljava/util/List;)V
    .locals 6
    .param p1, "errorTree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "superErrors":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    .line 158
    .local v2, "error":Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;
    iget-object v3, v2, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->error:Ljava/lang/String;

    const-string v4, "lock expression is not effectively final"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$1;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-static {v3}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->access$000(Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;)Lorg/checkerframework/common/basetype/BaseTypeChecker;

    move-result-object v3

    iget-object v4, v2, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->expression:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 160
    const-string v5, "lock.expression.not.final"

    invoke-static {v5, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    .line 159
    invoke-virtual {v3, v4, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_1

    .line 163
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v2    # "error":Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;
    :goto_1
    goto :goto_0

    .line 166
    :cond_1
    invoke-super {p0, p1, v0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->reportErrors(Lcom/sun/source/tree/Tree;Ljava/util/List;)V

    .line 167
    return-void
.end method

.method protected standardizeString(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Ljava/lang/String;
    .locals 3
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p3, "localScope"    # Lcom/sun/source/util/TreePath;
    .param p4, "useLocalScope"    # Z

    .line 175
    invoke-static {p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->isExpressionError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    return-object p1

    .line 180
    :cond_0
    sget-object v0, Lorg/checkerframework/checker/lock/LockVisitor;->SELF_RECEIVER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    return-object p1

    .line 185
    :cond_1
    nop

    .line 186
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parse(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 188
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    if-nez v0, :cond_2

    .line 189
    new-instance v1, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    const-string v2, " "

    invoke-direct {v1, p1, v2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 191
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$1;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->isExpressionEffectivelyFinal(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 194
    new-instance v1, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    const-string v2, "lock expression is not effectively final"

    invoke-direct {v1, p1, v2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    return-object v1

    .line 197
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 198
    .end local v0    # "result":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    new-instance v1, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    invoke-direct {v1, p1, v0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;-><init>(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;)V

    invoke-virtual {v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
