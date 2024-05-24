.class public abstract Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;
.super Ljava/lang/Object;
.source "ModifierReviewable.java"

# interfaces
.implements Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;
.implements Lnet/bytebuddy/description/ModifierReviewable$ForFieldDescription;
.implements Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;
.implements Lnet/bytebuddy/description/ModifierReviewable$ForParameterDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/ModifierReviewable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private matchesMask(I)Z
    .locals 1
    .param p1, "mask"    # I

    .line 618
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->getModifiers()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getEnumerationState()Lnet/bytebuddy/description/modifier/EnumerationState;
    .locals 1

    .line 492
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/modifier/EnumerationState;->ENUMERATION:Lnet/bytebuddy/description/modifier/EnumerationState;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/description/modifier/EnumerationState;->PLAIN:Lnet/bytebuddy/description/modifier/EnumerationState;

    :goto_0
    return-object v0
.end method

.method public getFieldManifestation()Lnet/bytebuddy/description/modifier/FieldManifestation;
    .locals 4

    .line 522
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->getModifiers()I

    move-result v0

    .line 523
    .local v0, "modifiers":I
    and-int/lit8 v1, v0, 0x50

    sparse-switch v1, :sswitch_data_0

    .line 531
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected modifiers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 527
    :sswitch_0
    sget-object v1, Lnet/bytebuddy/description/modifier/FieldManifestation;->VOLATILE:Lnet/bytebuddy/description/modifier/FieldManifestation;

    return-object v1

    .line 525
    :sswitch_1
    sget-object v1, Lnet/bytebuddy/description/modifier/FieldManifestation;->FINAL:Lnet/bytebuddy/description/modifier/FieldManifestation;

    return-object v1

    .line 529
    :sswitch_2
    sget-object v1, Lnet/bytebuddy/description/modifier/FieldManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/FieldManifestation;

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x10 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public getFieldPersistence()Lnet/bytebuddy/description/modifier/FieldPersistence;
    .locals 4

    .line 539
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->getModifiers()I

    move-result v0

    .line 540
    .local v0, "modifiers":I
    and-int/lit16 v1, v0, 0x80

    sparse-switch v1, :sswitch_data_0

    .line 546
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected modifiers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 542
    :sswitch_0
    sget-object v1, Lnet/bytebuddy/description/modifier/FieldPersistence;->TRANSIENT:Lnet/bytebuddy/description/modifier/FieldPersistence;

    return-object v1

    .line 544
    :sswitch_1
    sget-object v1, Lnet/bytebuddy/description/modifier/FieldPersistence;->PLAIN:Lnet/bytebuddy/description/modifier/FieldPersistence;

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public getMethodManifestation()Lnet/bytebuddy/description/modifier/MethodManifestation;
    .locals 4

    .line 563
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->getModifiers()I

    move-result v0

    .line 564
    .local v0, "modifiers":I
    and-int/lit16 v1, v0, 0x550

    sparse-switch v1, :sswitch_data_0

    .line 580
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected modifiers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 576
    :sswitch_0
    sget-object v1, Lnet/bytebuddy/description/modifier/MethodManifestation;->ABSTRACT:Lnet/bytebuddy/description/modifier/MethodManifestation;

    return-object v1

    .line 566
    :sswitch_1
    sget-object v1, Lnet/bytebuddy/description/modifier/MethodManifestation;->FINAL_NATIVE:Lnet/bytebuddy/description/modifier/MethodManifestation;

    return-object v1

    .line 568
    :sswitch_2
    sget-object v1, Lnet/bytebuddy/description/modifier/MethodManifestation;->NATIVE:Lnet/bytebuddy/description/modifier/MethodManifestation;

    return-object v1

    .line 574
    :sswitch_3
    sget-object v1, Lnet/bytebuddy/description/modifier/MethodManifestation;->FINAL_BRIDGE:Lnet/bytebuddy/description/modifier/MethodManifestation;

    return-object v1

    .line 572
    :sswitch_4
    sget-object v1, Lnet/bytebuddy/description/modifier/MethodManifestation;->BRIDGE:Lnet/bytebuddy/description/modifier/MethodManifestation;

    return-object v1

    .line 570
    :sswitch_5
    sget-object v1, Lnet/bytebuddy/description/modifier/MethodManifestation;->FINAL:Lnet/bytebuddy/description/modifier/MethodManifestation;

    return-object v1

    .line 578
    :sswitch_6
    sget-object v1, Lnet/bytebuddy/description/modifier/MethodManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/MethodManifestation;

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x10 -> :sswitch_5
        0x40 -> :sswitch_4
        0x50 -> :sswitch_3
        0x100 -> :sswitch_2
        0x110 -> :sswitch_1
        0x400 -> :sswitch_0
    .end sparse-switch
.end method

.method public getMethodStrictness()Lnet/bytebuddy/description/modifier/MethodStrictness;
    .locals 1

    .line 588
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/modifier/MethodStrictness;->STRICT:Lnet/bytebuddy/description/modifier/MethodStrictness;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/description/modifier/MethodStrictness;->PLAIN:Lnet/bytebuddy/description/modifier/MethodStrictness;

    :goto_0
    return-object v0
.end method

.method public getOwnership()Lnet/bytebuddy/description/modifier/Ownership;
    .locals 1

    .line 483
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/modifier/Ownership;->STATIC:Lnet/bytebuddy/description/modifier/Ownership;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/description/modifier/Ownership;->MEMBER:Lnet/bytebuddy/description/modifier/Ownership;

    :goto_0
    return-object v0
.end method

.method public getParameterManifestation()Lnet/bytebuddy/description/modifier/ParameterManifestation;
    .locals 1

    .line 597
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/modifier/ParameterManifestation;->FINAL:Lnet/bytebuddy/description/modifier/ParameterManifestation;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/description/modifier/ParameterManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/ParameterManifestation;

    :goto_0
    return-object v0
.end method

.method public getProvisioningState()Lnet/bytebuddy/description/modifier/ProvisioningState;
    .locals 1

    .line 606
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isMandated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/modifier/ProvisioningState;->MANDATED:Lnet/bytebuddy/description/modifier/ProvisioningState;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/description/modifier/ProvisioningState;->PLAIN:Lnet/bytebuddy/description/modifier/ProvisioningState;

    :goto_0
    return-object v0
.end method

.method public getSynchronizationState()Lnet/bytebuddy/description/modifier/SynchronizationState;
    .locals 1

    .line 554
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isSynchronized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/modifier/SynchronizationState;->SYNCHRONIZED:Lnet/bytebuddy/description/modifier/SynchronizationState;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/description/modifier/SynchronizationState;->PLAIN:Lnet/bytebuddy/description/modifier/SynchronizationState;

    :goto_0
    return-object v0
.end method

.method public getSyntheticState()Lnet/bytebuddy/description/modifier/SyntheticState;
    .locals 1

    .line 455
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/modifier/SyntheticState;->SYNTHETIC:Lnet/bytebuddy/description/modifier/SyntheticState;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/description/modifier/SyntheticState;->PLAIN:Lnet/bytebuddy/description/modifier/SyntheticState;

    :goto_0
    return-object v0
.end method

.method public getTypeManifestation()Lnet/bytebuddy/description/modifier/TypeManifestation;
    .locals 4

    .line 501
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->getModifiers()I

    move-result v0

    .line 502
    .local v0, "modifiers":I
    and-int/lit16 v1, v0, 0x2610

    sparse-switch v1, :sswitch_data_0

    .line 514
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected modifiers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 510
    :sswitch_0
    sget-object v1, Lnet/bytebuddy/description/modifier/TypeManifestation;->ANNOTATION:Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-object v1

    .line 508
    :sswitch_1
    sget-object v1, Lnet/bytebuddy/description/modifier/TypeManifestation;->INTERFACE:Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-object v1

    .line 506
    :sswitch_2
    sget-object v1, Lnet/bytebuddy/description/modifier/TypeManifestation;->ABSTRACT:Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-object v1

    .line 504
    :sswitch_3
    sget-object v1, Lnet/bytebuddy/description/modifier/TypeManifestation;->FINAL:Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-object v1

    .line 512
    :sswitch_4
    sget-object v1, Lnet/bytebuddy/description/modifier/TypeManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x10 -> :sswitch_3
        0x400 -> :sswitch_2
        0x600 -> :sswitch_1
        0x2600 -> :sswitch_0
    .end sparse-switch
.end method

.method public getVisibility()Lnet/bytebuddy/description/modifier/Visibility;
    .locals 4

    .line 464
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->getModifiers()I

    move-result v0

    .line 465
    .local v0, "modifiers":I
    and-int/lit8 v1, v0, 0x7

    packed-switch v1, :pswitch_data_0

    .line 475
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected modifiers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 469
    :pswitch_1
    sget-object v1, Lnet/bytebuddy/description/modifier/Visibility;->PROTECTED:Lnet/bytebuddy/description/modifier/Visibility;

    return-object v1

    .line 473
    :pswitch_2
    sget-object v1, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    return-object v1

    .line 467
    :pswitch_3
    sget-object v1, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    return-object v1

    .line 471
    :pswitch_4
    sget-object v1, Lnet/bytebuddy/description/modifier/Visibility;->PACKAGE_PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isAbstract()Z
    .locals 1

    .line 315
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isAnnotation()Z
    .locals 1

    .line 413
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isBridge()Z
    .locals 1

    .line 399
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isDeprecated()Z
    .locals 1

    .line 406
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isEnum()Z
    .locals 1

    .line 420
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    .line 322
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isInterface()Z
    .locals 1

    .line 427
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isMandated()Z
    .locals 1

    .line 385
    const v0, 0x8000

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isNative()Z
    .locals 1

    .line 364
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isPackagePrivate()Z
    .locals 1

    .line 350
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isProtected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .line 357
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 343
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 329
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isStrict()Z
    .locals 1

    .line 378
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isSynchronized()Z
    .locals 1

    .line 371
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    .line 392
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isTransient()Z
    .locals 1

    .line 434
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isVarArgs()Z
    .locals 1

    .line 448
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isVolatile()Z
    .locals 1

    .line 441
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method
