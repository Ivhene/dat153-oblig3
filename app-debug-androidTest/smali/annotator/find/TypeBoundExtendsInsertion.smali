.class public Lannotator/find/TypeBoundExtendsInsertion;
.super Lannotator/find/AnnotationInsertion;
.source "TypeBoundExtendsInsertion.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lannotator/find/Criteria;Z)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "criteria"    # Lannotator/find/Criteria;
    .param p3, "separateLine"    # Z

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lannotator/find/AnnotationInsertion;-><init>(Ljava/lang/String;Lannotator/find/Criteria;Z)V

    .line 22
    return-void
.end method


# virtual methods
.method protected addTrailingSpace(Z)Z
    .locals 1
    .param p1, "gotSeparateLine"    # Z

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method protected getText(ZZ)Ljava/lang/String;
    .locals 2
    .param p1, "comments"    # Z
    .param p2, "abbreviate"    # Z

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extends java.lang."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0, p1, p2}, Lannotator/find/AnnotationInsertion;->getText(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Object"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
