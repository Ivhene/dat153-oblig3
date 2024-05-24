.class public final Lscenelib/annotations/field/AnnotationAFT;
.super Lscenelib/annotations/field/ScalarAFT;
.source "AnnotationAFT.java"


# instance fields
.field public final annotationDef:Lscenelib/annotations/el/AnnotationDef;


# direct methods
.method public constructor <init>(Lscenelib/annotations/el/AnnotationDef;)V
    .locals 0
    .param p1, "annotationDef"    # Lscenelib/annotations/el/AnnotationDef;

    .line 21
    invoke-direct {p0}, Lscenelib/annotations/field/ScalarAFT;-><init>()V

    .line 22
    iput-object p1, p0, Lscenelib/annotations/field/AnnotationAFT;->annotationDef:Lscenelib/annotations/el/AnnotationDef;

    .line 23
    return-void
.end method


# virtual methods
.method public accept(Lscenelib/annotations/field/AFTVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscenelib/annotations/field/AFTVisitor<",
            "TR;TT;>;TT;)TR;"
        }
    .end annotation

    .line 51
    .local p1, "v":Lscenelib/annotations/field/AFTVisitor;, "Lscenelib/annotations/field/AFTVisitor<TR;TT;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0, p2}, Lscenelib/annotations/field/AFTVisitor;->visitAnnotationAFT(Lscenelib/annotations/field/AnnotationAFT;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 45
    move-object v0, p1

    check-cast v0, Lscenelib/annotations/Annotation;

    .line 46
    .local v0, "anno":Lscenelib/annotations/Annotation;
    invoke-virtual {v0}, Lscenelib/annotations/Annotation;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isValidValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 27
    instance-of v0, p1, Lscenelib/annotations/Annotation;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "annotation-field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscenelib/annotations/field/AnnotationAFT;->annotationDef:Lscenelib/annotations/el/AnnotationDef;

    iget-object v1, v1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
