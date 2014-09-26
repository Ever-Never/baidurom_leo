.class Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;
.super Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntPropertyValuesHolder"
.end annotation


# static fields
.field private static final sJNISetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mIntAnimatedValue:I

.field mIntKeyframeSet:Lcom/baidu/launcher/ui/animation/IntKeyframeSet;

.field private mIntProperty:Lcom/baidu/launcher/ui/animation/IntProperty;

.field mJniSetter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 735
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/launcher/ui/animation/Property;Lcom/baidu/launcher/ui/animation/IntKeyframeSet;)V
    .locals 1
    .parameter "property"
    .parameter "keyframeSet"

    .prologue
    .line 751
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;-><init>(Lcom/baidu/launcher/ui/animation/Property;Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$1;)V

    .line 752
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 753
    iput-object p2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    .line 754
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    check-cast v0, Lcom/baidu/launcher/ui/animation/IntKeyframeSet;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lcom/baidu/launcher/ui/animation/IntKeyframeSet;

    .line 755
    instance-of v0, p1, Lcom/baidu/launcher/ui/animation/IntProperty;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    check-cast v0, Lcom/baidu/launcher/ui/animation/IntProperty;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Lcom/baidu/launcher/ui/animation/IntProperty;

    .line 758
    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Lcom/baidu/launcher/ui/animation/Property;[I)V
    .locals 1
    .parameter "property"
    .parameter "values"

    .prologue
    .line 766
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;-><init>(Lcom/baidu/launcher/ui/animation/Property;Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$1;)V

    .line 767
    invoke-virtual {p0, p2}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    .line 768
    instance-of v0, p1, Lcom/baidu/launcher/ui/animation/IntProperty;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    check-cast v0, Lcom/baidu/launcher/ui/animation/IntProperty;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Lcom/baidu/launcher/ui/animation/IntProperty;

    .line 771
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/baidu/launcher/ui/animation/IntKeyframeSet;)V
    .locals 1
    .parameter "propertyName"
    .parameter "keyframeSet"

    .prologue
    .line 744
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$1;)V

    .line 745
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 746
    iput-object p2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    .line 747
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    check-cast v0, Lcom/baidu/launcher/ui/animation/IntKeyframeSet;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lcom/baidu/launcher/ui/animation/IntKeyframeSet;

    .line 748
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 1
    .parameter "propertyName"
    .parameter "values"

    .prologue
    .line 761
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$1;)V

    .line 762
    invoke-virtual {p0, p2}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    .line 763
    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1
    .parameter "fraction"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lcom/baidu/launcher/ui/animation/IntKeyframeSet;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/animation/IntKeyframeSet;->getIntValue(F)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    .line 782
    return-void
.end method

.method public clone()Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    .locals 2

    .prologue
    .line 791
    invoke-super {p0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->clone()Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    .line 792
    .local v0, newPVH:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    iget-object v1, v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    check-cast v1, Lcom/baidu/launcher/ui/animation/IntKeyframeSet;

    iput-object v1, v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lcom/baidu/launcher/ui/animation/IntKeyframeSet;

    .line 793
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->clone()Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->clone()Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 786
    iget v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 805
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Lcom/baidu/launcher/ui/animation/IntProperty;

    if-eqz v1, :cond_1

    .line 806
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Lcom/baidu/launcher/ui/animation/IntProperty;

    iget v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-virtual {v1, p1, v2}, Lcom/baidu/launcher/ui/animation/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    if-eqz v1, :cond_2

    .line 810
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    iget v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/baidu/launcher/ui/animation/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 813
    :cond_2
    iget v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:I

    if-eqz v1, :cond_3

    .line 814
    iget v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:I

    iget v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    #calls: Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->nCallIntMethod(Ljava/lang/Object;II)V
    invoke-static {p1, v1, v2}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->access$200(Ljava/lang/Object;II)V

    goto :goto_0

    .line 817
    :cond_3
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 819
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 820
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 823
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 824
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 1
    .parameter "values"

    .prologue
    .line 775
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 776
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    check-cast v0, Lcom/baidu/launcher/ui/animation/IntKeyframeSet;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lcom/baidu/launcher/ui/animation/IntKeyframeSet;

    .line 777
    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 7
    .parameter "targetClass"

    .prologue
    .line 831
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    if-eqz v4, :cond_1

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 837
    sget-object v4, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 838
    .local v3, propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_2

    .line 839
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 840
    .local v1, mJniSetterInteger:Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 841
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:I

    .line 844
    .end local v1           #mJniSetterInteger:Ljava/lang/Integer;
    :cond_2
    iget v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:I

    if-nez v4, :cond_4

    .line 845
    const-string v4, "set"

    iget-object v5, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 846
    .local v2, methodName:Ljava/lang/String;
    #calls: Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->nGetIntMethod(Ljava/lang/Class;Ljava/lang/String;)I
    invoke-static {p1, v2}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->access$300(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:I

    .line 847
    iget v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:I

    if-eqz v4, :cond_4

    .line 848
    if-nez v3, :cond_3

    .line 849
    new-instance v3, Ljava/util/HashMap;

    .end local v3           #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 850
    .restart local v3       #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v4, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    :cond_3
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iget v5, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    .end local v2           #methodName:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 861
    .end local v3           #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    iget v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:I

    if-nez v4, :cond_0

    .line 863
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    goto :goto_0

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, e:Ljava/lang/NoSuchMethodError;
    :try_start_1
    const-string v4, "PropertyValuesHolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find native method using JNI, use reflection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_1

    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v4
.end method
