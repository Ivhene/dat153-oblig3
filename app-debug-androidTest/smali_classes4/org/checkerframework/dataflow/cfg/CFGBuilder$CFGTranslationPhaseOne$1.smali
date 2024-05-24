.class Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$1;
.super Ljava/lang/Object;
.source "CFGBuilder.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getTreeInfo(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

.field final synthetic val$bool:Z

.field final synthetic val$boxed:Z

.field final synthetic val$numeric:Z

.field final synthetic val$unboxedType:Ljavax/lang/model/type/TypeMirror;


# direct methods
.method constructor <init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;ZZZLjavax/lang/model/type/TypeMirror;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    .line 1959
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$1;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    iput-boolean p2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$1;->val$numeric:Z

    iput-boolean p3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$1;->val$boxed:Z

    iput-boolean p4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$1;->val$bool:Z

    iput-object p5, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$1;->val$unboxedType:Ljavax/lang/model/type/TypeMirror;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBoolean()Z
    .locals 1

    .line 1972
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$1;->val$bool:Z

    return v0
.end method

.method public isBoxed()Z
    .locals 1

    .line 1967
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$1;->val$boxed:Z

    return v0
.end method

.method public isNumeric()Z
    .locals 1

    .line 1962
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$1;->val$numeric:Z

    return v0
.end method

.method public unboxedType()Ljavax/lang/model/type/TypeMirror;
    .locals 1

    .line 1977
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$1;->val$unboxedType:Ljavax/lang/model/type/TypeMirror;

    return-object v0
.end method
