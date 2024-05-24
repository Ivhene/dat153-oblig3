.class public abstract Lorg/checkerframework/framework/util/Contract;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;,
        Lorg/checkerframework/framework/util/Contract$Postcondition;,
        Lorg/checkerframework/framework/util/Contract$Kind;,
        Lorg/checkerframework/framework/util/Contract$Precondition;
    }
.end annotation


# instance fields
.field public final annotation:Ljavax/lang/model/element/AnnotationMirror;

.field public final contractAnnotation:Ljavax/lang/model/element/AnnotationMirror;

.field public final expression:Ljava/lang/String;

.field public final kind:Lorg/checkerframework/framework/util/Contract$Kind;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/util/Contract$Kind;Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 0
    .param p1, "kind"    # Lorg/checkerframework/framework/util/Contract$Kind;
    .param p2, "expression"    # Ljava/lang/String;
    .param p3, "annotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p4, "contractAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lorg/checkerframework/framework/util/Contract;->expression:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lorg/checkerframework/framework/util/Contract;->annotation:Ljavax/lang/model/element/AnnotationMirror;

    .line 64
    iput-object p4, p0, Lorg/checkerframework/framework/util/Contract;->contractAnnotation:Ljavax/lang/model/element/AnnotationMirror;

    .line 65
    iput-object p1, p0, Lorg/checkerframework/framework/util/Contract;->kind:Lorg/checkerframework/framework/util/Contract$Kind;

    .line 66
    return-void
.end method

.method public static create(Lorg/checkerframework/framework/util/Contract$Kind;Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Boolean;)Lorg/checkerframework/framework/util/Contract;
    .locals 4
    .param p0, "kind"    # Lorg/checkerframework/framework/util/Contract$Kind;
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "annotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "contractAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p4, "ensuresQualifierIf"    # Ljava/lang/Boolean;

    .line 85
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sget-object v3, Lorg/checkerframework/framework/util/Contract$Kind;->CONDITIONALPOSTCONDITION:Lorg/checkerframework/framework/util/Contract$Kind;

    if-ne p0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-ne v2, v0, :cond_2

    .line 88
    sget-object v0, Lorg/checkerframework/framework/util/Contract$1;->$SwitchMap$org$checkerframework$framework$util$Contract$Kind:[I

    invoke-virtual {p0}, Lorg/checkerframework/framework/util/Contract$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 97
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :pswitch_0
    new-instance v0, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;

    .line 95
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;-><init>(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Z)V

    .line 94
    return-object v0

    .line 92
    :pswitch_1
    new-instance v0, Lorg/checkerframework/framework/util/Contract$Postcondition;

    invoke-direct {v0, p1, p2, p3}, Lorg/checkerframework/framework/util/Contract$Postcondition;-><init>(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    return-object v0

    .line 90
    :pswitch_2
    new-instance v0, Lorg/checkerframework/framework/util/Contract$Precondition;

    invoke-direct {v0, p1, p2, p3}, Lorg/checkerframework/framework/util/Contract$Precondition;-><init>(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    return-object v0

    .line 86
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "Mismatch: ensuresQualifierIf=%s, kind=%s"

    filled-new-array {p4, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 105
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 106
    return v0

    .line 108
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/framework/util/Contract;

    .line 114
    .local v2, "contract":Lorg/checkerframework/framework/util/Contract;
    iget-object v3, p0, Lorg/checkerframework/framework/util/Contract;->kind:Lorg/checkerframework/framework/util/Contract$Kind;

    iget-object v4, v2, Lorg/checkerframework/framework/util/Contract;->kind:Lorg/checkerframework/framework/util/Contract$Kind;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/checkerframework/framework/util/Contract;->expression:Ljava/lang/String;

    iget-object v4, v2, Lorg/checkerframework/framework/util/Contract;->expression:Ljava/lang/String;

    .line 115
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/framework/util/Contract;->annotation:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v4, v2, Lorg/checkerframework/framework/util/Contract;->annotation:Ljavax/lang/model/element/AnnotationMirror;

    .line 116
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 114
    :goto_0
    return v0

    .line 109
    .end local v2    # "contract":Lorg/checkerframework/framework/util/Contract;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 121
    iget-object v0, p0, Lorg/checkerframework/framework/util/Contract;->kind:Lorg/checkerframework/framework/util/Contract$Kind;

    iget-object v1, p0, Lorg/checkerframework/framework/util/Contract;->expression:Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/framework/util/Contract;->annotation:Ljavax/lang/model/element/AnnotationMirror;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 126
    nop

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/Contract;->expression:Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/framework/util/Contract;->annotation:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v3, p0, Lorg/checkerframework/framework/util/Contract;->contractAnnotation:Ljavax/lang/model/element/AnnotationMirror;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 126
    const-string v1, "%s{expression=%s, annotation=%s, contractAnnotation=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
