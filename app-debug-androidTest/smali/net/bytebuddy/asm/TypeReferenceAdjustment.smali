.class public Lnet/bytebuddy/asm/TypeReferenceAdjustment;
.super Lnet/bytebuddy/asm/AsmVisitorWrapper$AbstractBase;
.source "TypeReferenceAdjustment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final filter:Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final strict:Z


# direct methods
.method protected constructor <init>(ZLnet/bytebuddy/matcher/ElementMatcher$Junction;)V
    .locals 0
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p2, "filter":Lnet/bytebuddy/matcher/ElementMatcher$Junction;, "Lnet/bytebuddy/matcher/ElementMatcher$Junction<-Lnet/bytebuddy/description/type/TypeDescription;>;"
    invoke-direct {p0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$AbstractBase;-><init>()V

    .line 61
    iput-boolean p1, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->strict:Z

    .line 62
    iput-object p2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->filter:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    .line 63
    return-void
.end method

.method public static relaxed()Lnet/bytebuddy/asm/TypeReferenceAdjustment;
    .locals 3

    .line 82
    new-instance v0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;

    const/4 v1, 0x0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/TypeReferenceAdjustment;-><init>(ZLnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-object v0
.end method

.method public static strict()Lnet/bytebuddy/asm/TypeReferenceAdjustment;
    .locals 3

    .line 72
    new-instance v0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;

    const/4 v1, 0x1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/TypeReferenceAdjustment;-><init>(ZLnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-object v0
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
    iget-boolean v2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->strict:Z

    check-cast p1, Lnet/bytebuddy/asm/TypeReferenceAdjustment;

    iget-boolean v3, p1, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->strict:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->filter:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object p1, p1, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->filter:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/asm/TypeReferenceAdjustment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/asm/TypeReferenceAdjustment;"
        }
    .end annotation

    .line 92
    .local p1, "filter":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/type/TypeDescription;>;"
    new-instance v0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;

    iget-boolean v1, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->strict:Z

    iget-object v2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->filter:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-interface {v2, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/TypeReferenceAdjustment;-><init>(ZLnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->strict:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->filter:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;
    .locals 3
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "classVisitor"    # Lnet/bytebuddy/jar/asm/ClassVisitor;
    .param p3, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p4, "typePool"    # Lnet/bytebuddy/pool/TypePool;
    .param p7, "writerFlags"    # I
    .param p8, "readerFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;",
            "Lnet/bytebuddy/implementation/Implementation$Context;",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;II)",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;"
        }
    .end annotation

    .line 106
    .local p5, "fields":Lnet/bytebuddy/description/field/FieldList;, "Lnet/bytebuddy/description/field/FieldList<Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    .local p6, "methods":Lnet/bytebuddy/description/method/MethodList;, "Lnet/bytebuddy/description/method/MethodList<*>;"
    new-instance v0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    iget-boolean v1, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->strict:Z

    iget-object v2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->filter:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-direct {v0, p2, v1, v2, p4}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;-><init>(Lnet/bytebuddy/jar/asm/ClassVisitor;ZLnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/pool/TypePool;)V

    return-object v0
.end method
