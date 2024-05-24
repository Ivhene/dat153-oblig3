.class public Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;
.super Ljava/lang/Object;
.source "FieldAttributeAppender.java"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;",
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
            "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p1, "factories":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

    .line 108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    .line 109
    .local v1, "factory":Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;
    instance-of v2, v1, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;

    iget-object v3, v3, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 111
    :cond_0
    instance-of v2, v1, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;

    if-nez v2, :cond_1

    .line 112
    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v1    # "factory":Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;
    :cond_1
    :goto_1
    goto :goto_0

    .line 115
    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;)V
    .locals 1
    .param p1, "factory"    # [Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    .line 98
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;-><init>(Ljava/util/List;)V

    .line 99
    return-void
.end method


# virtual methods
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;

    iget-object p1, p1, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;
    .locals 4
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .local v0, "fieldAttributeAppenders":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;>;"
    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    .line 123
    .local v2, "factory":Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;
    invoke-interface {v2, p1}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v2    # "factory":Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;
    goto :goto_0

    .line 125
    :cond_0
    new-instance v1, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Compound;

    invoke-direct {v1, v0}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Compound;-><init>(Ljava/util/List;)V

    return-object v1
.end method
