.class abstract Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;
.super Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase;
.source "DynamicType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field protected final defaultValue:Ljava/lang/Object;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation
.end field

.field protected final fieldAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

.field protected final transformer:Lnet/bytebuddy/dynamic/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "fieldAttributeAppenderFactory"    # Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;
    .param p3, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1843
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;, "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter<TV;>;"
    .local p2, "transformer":Lnet/bytebuddy/dynamic/Transformer;, "Lnet/bytebuddy/dynamic/Transformer<Lnet/bytebuddy/description/field/FieldDescription;>;"
    invoke-direct {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase;-><init>()V

    .line 1844
    iput-object p1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->fieldAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    .line 1845
    iput-object p2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    .line 1846
    iput-object p3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->defaultValue:Ljava/lang/Object;

    .line 1847
    return-void
.end method


# virtual methods
.method public attribute(Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;
    .locals 4
    .param p1, "fieldAttributeAppenderFactory"    # Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional<",
            "TV;>;"
        }
    .end annotation

    .line 1853
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;, "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter<TV;>;"
    new-instance v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->fieldAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;-><init>([Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;)V

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->defaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->materialize(Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;Ljava/lang/Object;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;

    move-result-object v0

    return-object v0
.end method

.method protected defaultValue(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;
    .locals 2
    .param p1, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional<",
            "TV;>;"
        }
    .end annotation

    .line 1866
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;, "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter<TV;>;"
    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->fieldAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-virtual {p0, v0, v1, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->materialize(Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;Ljava/lang/Object;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;

    move-result-object v0

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->fieldAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    check-cast p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->fieldAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->defaultValue:Ljava/lang/Object;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->defaultValue:Ljava/lang/Object;

    if-eqz p1, :cond_5

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_5
    if-eqz v2, :cond_7

    :cond_6
    return v1

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->fieldAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->defaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method protected abstract materialize(Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;Ljava/lang/Object;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional<",
            "TV;>;"
        }
    .end annotation
.end method

.method public transform(Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional<",
            "TV;>;"
        }
    .end annotation

    .line 1861
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;, "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter<TV;>;"
    .local p1, "transformer":Lnet/bytebuddy/dynamic/Transformer;, "Lnet/bytebuddy/dynamic/Transformer<Lnet/bytebuddy/description/field/FieldDescription;>;"
    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->fieldAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    new-instance v1, Lnet/bytebuddy/dynamic/Transformer$Compound;

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/bytebuddy/dynamic/Transformer;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lnet/bytebuddy/dynamic/Transformer$Compound;-><init>([Lnet/bytebuddy/dynamic/Transformer;)V

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->defaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;->materialize(Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;Ljava/lang/Object;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;

    move-result-object v0

    return-object v0
.end method
