.class public Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;
.super Ljava/lang/Object;
.source "AsmVisitorWrapper.java"

# interfaces
.implements Lnet/bytebuddy/asm/AsmVisitorWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/AsmVisitorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final asmVisitorWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;",
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
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;",
            ">;)V"
        }
    .end annotation

    .line 700
    .local p1, "asmVisitorWrappers":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/asm/AsmVisitorWrapper;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    .line 702
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/asm/AsmVisitorWrapper;

    .line 703
    .local v1, "asmVisitorWrapper":Lnet/bytebuddy/asm/AsmVisitorWrapper;
    instance-of v2, v1, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;

    if-eqz v2, :cond_0

    .line 704
    iget-object v2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;

    iget-object v3, v3, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 705
    :cond_0
    instance-of v2, v1, Lnet/bytebuddy/asm/AsmVisitorWrapper$NoOp;

    if-nez v2, :cond_1

    .line 706
    iget-object v2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    .end local v1    # "asmVisitorWrapper":Lnet/bytebuddy/asm/AsmVisitorWrapper;
    :cond_1
    :goto_1
    goto :goto_0

    .line 709
    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/asm/AsmVisitorWrapper;)V
    .locals 1
    .param p1, "asmVisitorWrapper"    # [Lnet/bytebuddy/asm/AsmVisitorWrapper;

    .line 689
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;-><init>(Ljava/util/List;)V

    .line 690
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
    iget-object v2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;

    iget-object p1, p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public mergeReader(I)I
    .locals 2
    .param p1, "flags"    # I

    .line 725
    iget-object v0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/asm/AsmVisitorWrapper;

    .line 726
    .local v1, "asmVisitorWrapper":Lnet/bytebuddy/asm/AsmVisitorWrapper;
    invoke-interface {v1, p1}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->mergeReader(I)I

    move-result p1

    .line 727
    .end local v1    # "asmVisitorWrapper":Lnet/bytebuddy/asm/AsmVisitorWrapper;
    goto :goto_0

    .line 728
    :cond_0
    return p1
.end method

.method public mergeWriter(I)I
    .locals 2
    .param p1, "flags"    # I

    .line 715
    iget-object v0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/asm/AsmVisitorWrapper;

    .line 716
    .local v1, "asmVisitorWrapper":Lnet/bytebuddy/asm/AsmVisitorWrapper;
    invoke-interface {v1, p1}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->mergeWriter(I)I

    move-result p1

    .line 717
    .end local v1    # "asmVisitorWrapper":Lnet/bytebuddy/asm/AsmVisitorWrapper;
    goto :goto_0

    .line 718
    :cond_0
    return p1
.end method

.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;
    .locals 13
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

    .line 742
    .local p5, "fields":Lnet/bytebuddy/description/field/FieldList;, "Lnet/bytebuddy/description/field/FieldList<Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    .local p6, "methods":Lnet/bytebuddy/description/method/MethodList;, "Lnet/bytebuddy/description/method/MethodList<*>;"
    move-object v0, p0

    iget-object v1, v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;->asmVisitorWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v11, p2

    .end local p2    # "classVisitor":Lnet/bytebuddy/jar/asm/ClassVisitor;
    .local v11, "classVisitor":Lnet/bytebuddy/jar/asm/ClassVisitor;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lnet/bytebuddy/asm/AsmVisitorWrapper;

    .line 743
    .local v12, "asmVisitorWrapper":Lnet/bytebuddy/asm/AsmVisitorWrapper;
    move-object v2, v12

    move-object v3, p1

    move-object v4, v11

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;

    move-result-object v11

    .line 751
    .end local v12    # "asmVisitorWrapper":Lnet/bytebuddy/asm/AsmVisitorWrapper;
    goto :goto_0

    .line 752
    :cond_0
    return-object v11
.end method
