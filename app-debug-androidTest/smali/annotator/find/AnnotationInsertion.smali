.class public Lannotator/find/AnnotationInsertion;
.super Lannotator/find/Insertion;
.source "AnnotationInsertion.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final annotation:Lscenelib/annotations/Annotation;

.field private final fullyQualifiedAnnotationName:Ljava/lang/String;

.field private final fullyQualifiedAnnotationText:Ljava/lang/String;

.field private generateBound:Z

.field private generateExtends:Z

.field private type:Ljava/lang/String;

.field private wasGenerateExtends:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "annotation"    # Ljava/lang/String;

    .line 80
    new-instance v0, Lannotator/find/Criteria;

    invoke-direct {v0}, Lannotator/find/Criteria;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lannotator/find/AnnotationInsertion;-><init>(Ljava/lang/String;Lannotator/find/Criteria;Z)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lannotator/find/Criteria;Z)V
    .locals 1
    .param p1, "fullyQualifiedAnnotationText"    # Ljava/lang/String;
    .param p2, "criteria"    # Lannotator/find/Criteria;
    .param p3, "separateLine"    # Z

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lannotator/find/AnnotationInsertion;-><init>(Ljava/lang/String;Lannotator/find/Criteria;ZLscenelib/annotations/Annotation;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lannotator/find/Criteria;ZLscenelib/annotations/Annotation;)V
    .locals 1
    .param p1, "fullyQualifiedAnnotationText"    # Ljava/lang/String;
    .param p2, "criteria"    # Lannotator/find/Criteria;
    .param p3, "separateLine"    # Z
    .param p4, "annotation"    # Lscenelib/annotations/Annotation;

    .line 60
    invoke-direct {p0, p2, p3}, Lannotator/find/Insertion;-><init>(Lannotator/find/Criteria;Z)V

    .line 61
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iput-object p1, p0, Lannotator/find/AnnotationInsertion;->fullyQualifiedAnnotationText:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lannotator/find/AnnotationInsertion;->extractAnnotationFullyQualifiedName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/AnnotationInsertion;->fullyQualifiedAnnotationName:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lannotator/find/AnnotationInsertion;->annotation:Lscenelib/annotations/Annotation;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lannotator/find/AnnotationInsertion;->type:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lannotator/find/AnnotationInsertion;->generateBound:Z

    .line 69
    iput-boolean v0, p0, Lannotator/find/AnnotationInsertion;->generateExtends:Z

    .line 70
    iput-boolean v0, p0, Lannotator/find/AnnotationInsertion;->wasGenerateExtends:Z

    .line 71
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private extractAnnotationFullyQualifiedName()Ljava/lang/String;
    .locals 3

    .line 150
    iget-object v0, p0, Lannotator/find/AnnotationInsertion;->fullyQualifiedAnnotationText:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const/4 v0, 0x1

    .line 154
    .local v0, "nameBegin":I
    iget-object v1, p0, Lannotator/find/AnnotationInsertion;->fullyQualifiedAnnotationText:Ljava/lang/String;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, "nameEnd":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 157
    iget-object v2, p0, Lannotator/find/AnnotationInsertion;->fullyQualifiedAnnotationText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 160
    :cond_0
    iget-object v2, p0, Lannotator/find/AnnotationInsertion;->fullyQualifiedAnnotationText:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 150
    .end local v0    # "nameBegin":I
    .end local v1    # "nameEnd":I
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method protected addLeadingSpace(ZIC)Z
    .locals 1
    .param p1, "gotSeparateLine"    # Z
    .param p2, "pos"    # I
    .param p3, "precedingChar"    # C

    .line 184
    iget-boolean v0, p0, Lannotator/find/AnnotationInsertion;->generateExtends:Z

    if-nez v0, :cond_1

    const/16 v0, 0x2e

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lannotator/find/Insertion;->addLeadingSpace(ZIC)Z

    move-result v0

    return v0

    .line 185
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected addTrailingSpace(Z)Z
    .locals 1
    .param p1, "gotSeparateLine"    # Z

    .line 193
    iget-boolean v0, p0, Lannotator/find/AnnotationInsertion;->wasGenerateExtends:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lannotator/find/Insertion;->addTrailingSpace(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAnnotation()Lscenelib/annotations/Annotation;
    .locals 1

    .line 214
    iget-object v0, p0, Lannotator/find/AnnotationInsertion;->annotation:Lscenelib/annotations/Annotation;

    return-object v0
.end method

.method public getAnnotationFullyQualifiedName()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lannotator/find/AnnotationInsertion;->fullyQualifiedAnnotationName:Ljava/lang/String;

    return-object v0
.end method

.method public getAnnotationText()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lannotator/find/AnnotationInsertion;->fullyQualifiedAnnotationText:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Lannotator/find/Insertion$Kind;
    .locals 1

    .line 197
    sget-object v0, Lannotator/find/Insertion$Kind;->ANNOTATION:Lannotator/find/Insertion$Kind;

    return-object v0
.end method

.method protected getText(ZZ)Ljava/lang/String;
    .locals 4
    .param p1, "comments"    # Z
    .param p2, "abbreviate"    # Z

    .line 113
    iget-object v0, p0, Lannotator/find/AnnotationInsertion;->fullyQualifiedAnnotationText:Ljava/lang/String;

    .line 114
    .local v0, "result":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 115
    invoke-static {v0}, Lannotator/find/AnnotationInsertion;->removePackage(Ljava/lang/String;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v1

    .line 116
    .local v1, "ps":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v1, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 117
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 118
    iget-object v3, p0, Lannotator/find/AnnotationInsertion;->packageNames:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v3, v1, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 122
    .end local v1    # "ps":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 132
    iget-object v1, p0, Lannotator/find/AnnotationInsertion;->type:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lannotator/find/AnnotationInsertion;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    iget-boolean v1, p0, Lannotator/find/AnnotationInsertion;->generateBound:Z

    if-eqz v1, :cond_2

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Object &"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_2
    iget-boolean v1, p0, Lannotator/find/AnnotationInsertion;->generateExtends:Z

    if-eqz v1, :cond_3

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " extends "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    return-object v1

    .line 123
    :cond_5
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal insertion, must start with @: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isGenerateBound()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lannotator/find/AnnotationInsertion;->generateBound:Z

    return v0
.end method

.method public isGenerateExtends()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lannotator/find/AnnotationInsertion;->generateExtends:Z

    return v0
.end method

.method public setGenerateBound(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 97
    iput-boolean p1, p0, Lannotator/find/AnnotationInsertion;->generateBound:Z

    .line 98
    return-void
.end method

.method public setGenerateExtends(Z)V
    .locals 1
    .param p1, "generateExtends"    # Z

    .line 92
    iput-boolean p1, p0, Lannotator/find/AnnotationInsertion;->generateExtends:Z

    .line 93
    iget-boolean v0, p0, Lannotator/find/AnnotationInsertion;->wasGenerateExtends:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lannotator/find/AnnotationInsertion;->wasGenerateExtends:Z

    .line 94
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lannotator/find/AnnotationInsertion;->type:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lannotator/find/AnnotationInsertion;->fullyQualifiedAnnotationText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lannotator/find/Insertion;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
