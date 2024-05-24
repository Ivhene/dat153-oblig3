.class public Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Compound;
.super Ljava/lang/Object;
.source "RecordComponentAttributeAppender.java"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final recordComponentAttributeAppenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;",
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
            "Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;",
            ">;)V"
        }
    .end annotation

    .line 226
    .local p1, "recordComponentAttributeAppenders":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Compound;->recordComponentAttributeAppenders:Ljava/util/List;

    .line 228
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;

    .line 229
    .local v1, "recordComponentAttributeAppender":Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;
    instance-of v2, v1, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Compound;

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Compound;->recordComponentAttributeAppenders:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Compound;

    iget-object v3, v3, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Compound;->recordComponentAttributeAppenders:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 231
    :cond_0
    instance-of v2, v1, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;

    if-nez v2, :cond_1

    .line 232
    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Compound;->recordComponentAttributeAppenders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v1    # "recordComponentAttributeAppender":Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;
    :cond_1
    :goto_1
    goto :goto_0

    .line 235
    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;)V
    .locals 1
    .param p1, "recordComponentAttributeAppender"    # [Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;

    .line 217
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Compound;-><init>(Ljava/util/List;)V

    .line 218
    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/RecordComponentVisitor;Lnet/bytebuddy/description/type/RecordComponentDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 2
    .param p1, "recordComponentVisitor"    # Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .param p2, "recordComponentDescription"    # Lnet/bytebuddy/description/type/RecordComponentDescription;
    .param p3, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    .line 241
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Compound;->recordComponentAttributeAppenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;

    .line 242
    .local v1, "recordComponentAttributeAppender":Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;
    invoke-interface {v1, p1, p2, p3}, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/RecordComponentVisitor;Lnet/bytebuddy/description/type/RecordComponentDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    .line 243
    .end local v1    # "recordComponentAttributeAppender":Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;
    goto :goto_0

    .line 244
    :cond_0
    return-void
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Compound;->recordComponentAttributeAppenders:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Compound;

    iget-object p1, p1, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Compound;->recordComponentAttributeAppenders:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Compound;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Compound;->recordComponentAttributeAppenders:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
