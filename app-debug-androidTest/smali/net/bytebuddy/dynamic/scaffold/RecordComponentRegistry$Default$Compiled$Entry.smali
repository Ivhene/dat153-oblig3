.class public Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;
.super Ljava/lang/Object;
.source "RecordComponentRegistry.java"

# interfaces
.implements Lnet/bytebuddy/matcher/ElementMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/ElementMatcher<",
        "Lnet/bytebuddy/description/type/RecordComponentDescription;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final matcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final recordComponentAttributeAppender:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;

.field private final transformer:Lnet/bytebuddy/dynamic/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;Lnet/bytebuddy/dynamic/Transformer;)V
    .locals 0
    .param p2, "recordComponentAttributeAppender"    # Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ">;",
            "Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/type/RecordComponentDescription;>;"
    .local p3, "transformer":Lnet/bytebuddy/dynamic/Transformer;, "Lnet/bytebuddy/dynamic/Transformer<Lnet/bytebuddy/description/type/RecordComponentDescription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 273
    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->recordComponentAttributeAppender:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;

    .line 274
    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    .line 275
    return-void
.end method


# virtual methods
.method protected bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/RecordComponentDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record;
    .locals 3
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "recordComponentDescription"    # Lnet/bytebuddy/description/type/RecordComponentDescription;

    .line 285
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForExplicitRecordComponent;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->recordComponentAttributeAppender:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-interface {v2, p1, p2}, Lnet/bytebuddy/dynamic/Transformer;->transform(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/RecordComponentDescription;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForExplicitRecordComponent;-><init>(Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;Lnet/bytebuddy/description/type/RecordComponentDescription;)V

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->recordComponentAttributeAppender:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->recordComponentAttributeAppender:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->recordComponentAttributeAppender:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 244
    check-cast p1, Lnet/bytebuddy/description/type/RecordComponentDescription;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->matches(Lnet/bytebuddy/description/type/RecordComponentDescription;)Z

    move-result p1

    return p1
.end method

.method public matches(Lnet/bytebuddy/description/type/RecordComponentDescription;)Z
    .locals 1
    .param p1, "target"    # Lnet/bytebuddy/description/type/RecordComponentDescription;

    .line 292
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-interface {v0, p1}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
