.class public Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;
.super Ljava/lang/Object;
.source "AnnotationAppender.java"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/AnnotationAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final target:Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;)V
    .locals 0
    .param p1, "target"    # Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->target:Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;

    .line 286
    return-void
.end method

.method public static apply(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p0, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .param p1, "valueType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 313
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 315
    .local v0, "arrayVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 316
    .local v1, "length":I
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .line 317
    .local v2, "componentType":Lnet/bytebuddy/description/type/TypeDescription;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 318
    sget-object v4, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->NO_NAME:Ljava/lang/String;

    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->apply(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    .end local v3    # "index":I
    :cond_0
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnd()V

    .line 321
    .end local v0    # "arrayVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .end local v1    # "length":I
    .end local v2    # "componentType":Lnet/bytebuddy/description/type/TypeDescription;
    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    sget-object v2, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;->APPEND_DEFAULTS:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

    invoke-static {v0, v1, v2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->handle(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    goto :goto_1

    .line 323
    :cond_2
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 325
    :cond_3
    const-class v0, Ljava/lang/Class;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    move-object v0, p3

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 328
    :cond_4
    invoke-virtual {p0, p2, p3}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    :goto_1
    return-void
.end method

.method private doAppend(Lnet/bytebuddy/description/annotation/AnnotationDescription;ZLnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 2
    .param p1, "annotation"    # Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .param p2, "visible"    # Z
    .param p3, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    .line 359
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->target:Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;->visit(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 360
    .local v0, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    if-eqz v0, :cond_0

    .line 361
    invoke-static {v0, p1, p3}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->handle(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    .line 363
    :cond_0
    return-void
.end method

.method private doAppend(Lnet/bytebuddy/description/annotation/AnnotationDescription;ZLnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V
    .locals 2
    .param p1, "annotation"    # Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .param p2, "visible"    # Z
    .param p3, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .param p4, "typeReference"    # I
    .param p5, "typePath"    # Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->target:Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p4, p5}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;->visit(Ljava/lang/String;ZILjava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 399
    .local v0, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    if-eqz v0, :cond_0

    .line 400
    invoke-static {v0, p1, p3}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->handle(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    .line 402
    :cond_0
    return-void
.end method

.method private static handle(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 5
    .param p0, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .param p1, "annotation"    # Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .param p2, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    .line 296
    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 297
    .local v1, "methodDescription":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    invoke-interface {p2, p1, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;->isRelevant(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v2, v3, v4}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->apply(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    .end local v1    # "methodDescription":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    :cond_0
    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnd()V

    .line 302
    return-void
.end method


# virtual methods
.method public append(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 3
    .param p1, "annotationDescription"    # Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .param p2, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    .line 336
    sget-object v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$1;->$SwitchMap$java$lang$annotation$RetentionPolicy:[I

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getRetention()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/annotation/RetentionPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 346
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected retention policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getRetention()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :pswitch_0
    goto :goto_0

    .line 341
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->doAppend(Lnet/bytebuddy/description/annotation/AnnotationDescription;ZLnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    .line 342
    goto :goto_0

    .line 338
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->doAppend(Lnet/bytebuddy/description/annotation/AnnotationDescription;ZLnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    .line 339
    nop

    .line 348
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public append(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 10
    .param p1, "annotationDescription"    # Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .param p2, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .param p3, "typeReference"    # I
    .param p4, "typePath"    # Ljava/lang/String;

    .line 369
    sget-object v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$1;->$SwitchMap$java$lang$annotation$RetentionPolicy:[I

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getRetention()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/annotation/RetentionPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 379
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected retention policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getRetention()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :pswitch_0
    goto :goto_0

    .line 374
    :pswitch_1
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->doAppend(Lnet/bytebuddy/description/annotation/AnnotationDescription;ZLnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V

    .line 375
    goto :goto_0

    .line 371
    :pswitch_2
    const/4 v6, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->doAppend(Lnet/bytebuddy/description/annotation/AnnotationDescription;ZLnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V

    .line 372
    nop

    .line 381
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->target:Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;

    check-cast p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;

    iget-object p1, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->target:Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->target:Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
