.class Lorg/jsoup/select/StructuralEvaluator$Parent;
.super Lorg/jsoup/select/StructuralEvaluator;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/StructuralEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parent"
.end annotation


# direct methods
.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .locals 0
    .param p1, "evaluator"    # Lorg/jsoup/select/Evaluator;

    .line 52
    invoke-direct {p0}, Lorg/jsoup/select/StructuralEvaluator;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/jsoup/select/StructuralEvaluator$Parent;->evaluator:Lorg/jsoup/select/Evaluator;

    .line 54
    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 3
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "element"    # Lorg/jsoup/nodes/Element;

    .line 57
    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 58
    return v0

    .line 60
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 62
    .local v1, "parent":Lorg/jsoup/nodes/Element;
    :goto_0
    iget-object v2, p0, Lorg/jsoup/select/StructuralEvaluator$Parent;->evaluator:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v2, p1, v1}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    const/4 v0, 0x1

    return v0

    .line 64
    :cond_1
    if-ne v1, p1, :cond_2

    .line 65
    nop

    .line 68
    return v0

    .line 66
    :cond_2
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator$Parent;->evaluator:Lorg/jsoup/select/Evaluator;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":parent%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method