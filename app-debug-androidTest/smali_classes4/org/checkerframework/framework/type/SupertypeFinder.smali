.class Lorg/checkerframework/framework/type/SupertypeFinder;
.super Ljava/lang/Object;
.source "SupertypeFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/type/SupertypeFinder$SupertypeFindingVisitor;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static directSuperTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Ljava/util/List;
    .locals 3
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/checkerframework/framework/type/SupertypeFinder$SupertypeFindingVisitor;

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/SupertypeFinder$SupertypeFindingVisitor;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 47
    .local v0, "supertypeFindingVisitor":Lorg/checkerframework/framework/type/SupertypeFinder$SupertypeFindingVisitor;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/checkerframework/framework/type/SupertypeFinder$SupertypeFindingVisitor;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/util/List;

    move-result-object v1

    .line 48
    .local v1, "supertypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v2, p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->postDirectSuperTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 49
    return-object v1
.end method

.method public static final directSuperTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/List;
    .locals 3
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/checkerframework/framework/type/SupertypeFinder$SupertypeFindingVisitor;

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/SupertypeFinder$SupertypeFindingVisitor;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 58
    .local v0, "supertypeFindingVisitor":Lorg/checkerframework/framework/type/SupertypeFinder$SupertypeFindingVisitor;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/checkerframework/framework/type/SupertypeFinder$SupertypeFindingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 59
    .local v1, "supertypes":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v2, p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->postDirectSuperTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 60
    return-object v1
.end method
