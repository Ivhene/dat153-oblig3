.class public Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$Compound;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final transformerDecorators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;",
            ">;)V"
        }
    .end annotation

    .line 5177
    .local p1, "transformerDecorators":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$Compound;->transformerDecorators:Ljava/util/List;

    .line 5179
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;

    .line 5180
    .local v1, "transformerDecorator":Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;
    instance-of v2, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$Compound;

    if-eqz v2, :cond_0

    .line 5181
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$Compound;->transformerDecorators:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$Compound;

    iget-object v3, v3, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$Compound;->transformerDecorators:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 5182
    :cond_0
    instance-of v2, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;

    if-nez v2, :cond_1

    .line 5183
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$Compound;->transformerDecorators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5185
    .end local v1    # "transformerDecorator":Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;
    :cond_1
    :goto_1
    goto :goto_0

    .line 5186
    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;)V
    .locals 1
    .param p1, "transformerDecorator"    # [Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;

    .line 5169
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$Compound;-><init>(Ljava/util/List;)V

    .line 5170
    return-void
.end method


# virtual methods
.method public decorate(Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .locals 2
    .param p1, "classFileTransformer"    # Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    .line 5192
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$Compound;->transformerDecorators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;

    .line 5193
    .local v1, "transformerDecorator":Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;
    invoke-interface {v1, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;->decorate(Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    move-result-object p1

    .line 5194
    .end local v1    # "transformerDecorator":Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;
    goto :goto_0

    .line 5195
    :cond_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$Compound;->transformerDecorators:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$Compound;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$Compound;->transformerDecorators:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$Compound;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$Compound;->transformerDecorators:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
